require 'rails_helper'

RSpec.describe RegistrationsController do

  describe "POST #create" do
    let(:name) { 'Sonia' }
    let(:surname) { 'Gautam' }
    let(:gender) { 'Female' }
    let(:dob) { '2002-03-27' }
    let(:citizen_id) { '1234567859002' }
    let(:address) { 'Donuts BKK' }
    let(:contact_number) { '0956964843' }
    let(:password) { '12345' }
    let(:password_confirmation) { '12345' }

    let(:user_params) do
        {
            user: {      
                name: name,
                surname: surname,
                gender: gender,
                dob: dob,
                citizen_id: citizen_id,
                address: address,
                contact_number: contact_number,
                password: password,
                password_confirmation: password_confirmation
            }
        }
    end

    context 'case: valid' do
        it 'creates a new User' do
            expect {
                post :create, params: user_params
            }.to change{User.count}.by(1)
        end

        it 'set session cookies' do
            post :create, params: user_params
            expect(session[:user_id]).to eq(User.last.id)
        end

        it 'redirects to the root path' do
            post :create, params: user_params
            expect(response).to redirect_to(root_path)
        end

    end

    context 'case: invalid' do
        let(:surname) { '' }
        it 'does not create a new User' do
            expect {
                post :create, params: user_params
            }.to_not change(User, :count)
        end

        it 'does not set session cookies' do
            post :create, params: user_params
            expect(session[:user_id]).to be_nil
        end

        it 'renders new template' do
            post :create, params: user_params
            expect(response).to render_template('new')
        end
    end
  end
end