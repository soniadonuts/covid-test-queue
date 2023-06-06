require 'rails_helper'

RSpec.describe CovidTestsController do
    describe "GET #show" do
        before do
            @user = User.create(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '7777777777777', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345')
            @admin = User.create(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '0000000000002', address: 'donuts', contact_number: '0990900909', user_role: 1, password: '12345', password_confirmation: '12345')
            @test = CovidTest.create(user_id: @user.id, test_date: '2023-06-06')
            # session[:user_id] = @admin.id
        end

        context 'case: valid' do
            it 'sets user by id passed in params' do
                # session[:user_id] = @admin.id
                # get "/users/#{@user.id}/tests" 

                # get :show, params: {id: @user.id}
                # expect(session[:user_id]).to eq(@admin.id)
            end

            it 'sets tests to all tests of selected user' do

            end
        end

        context 'case: invalid' do
            context 'not signed in' do
            end

            context 'not admin' do
            end
        end

    end

    describe "POST #create" do

        before do
            @user = User.create(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '7777777777777', address: 'donuts', contact_number: '0990900909', user_role: 1, password: '12345', password_confirmation: '12345')
        end

        # let(:covid_test_params) do
        #     {
        #         covid_test: {      
        #             test_date: '2023-06-06'
        #         },
        #         user_id: @user.id
        #     }
        # end

        context 'case: valid' do
            it 'creates new test request' do
                # session[:user_id] = @user.id
                # post :create, params: covid_test_params
                # expect(response).to redirect_to(root_path)
            end
        end

        context 'case: invalid' do
            
        end
    end

    describe "PATCH #update" do

    end

end

