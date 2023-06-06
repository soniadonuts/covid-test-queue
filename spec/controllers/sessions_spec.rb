require 'rails_helper'

RSpec.describe SessionsController do
    describe "POST #create" do

        before do
            @user = User.create(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '7777777777777', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345')
        end

        context 'case: valid' do
            it 'logs the user in' do
                post :create, params: {
                    citizen_id: '7777777777777',
                    password: '12345'
                }
                expect(session[:user_id]).to eq(@user.id)
            end

            it 'redirects to the root path' do
                post :create, params: {
                    citizen_id: '7777777777777',
                    password: '12345'
                }
                expect(response).to redirect_to(root_path)
            end

            
        end

        context 'case: invalid' do
            context 'user not found' do
                it 'renders new template' do
                    post :create, params: {
                        citizen_id: '0000000000000',
                        password: '12345'
                    }
                    expect(response).to render_template('new')
                end
            end

            context 'invalid password' do
                it 'renders new template' do
                    post :create, params: {
                        citizen_id: '7777777777777',
                        password: '54321'
                    }
                    expect(response).to render_template('new')
                end
            end
        end
    end

    describe "DELETE #destroy" do

        before do
            @user = User.create(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '7777777777777', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345')
            post :create, params: {
                citizen_id: '7777777777777',
                password: '12345'
            }
        end

        context 'case: valid' do
            it 'logs the user out' do
                delete :destroy 
                expect(session[:user_id]).to eq(nil)
            end

            it 'redirects to the root path' do
                delete :destroy 
                expect(response).to redirect_to(root_path)
            end
        end


    end
  
end
