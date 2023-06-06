class CovidTestsController < ApplicationController
    before_action :require_user_logged_in, only: [:show, :edit, :update]
    before_action :must_be_admin, only: [:show, :edit, :update]


    def new
        @covid_test = CovidTest.new
    end

    def show
        @user = User.find_by_id(params[:id])
        @tests = @user.covid_tests
    end

    def create
        @covid_test = CovidTest.new(create_test_param)
        @covid_test.user_id = Current.user.id
        if @covid_test.save
            redirect_to root_path, notice: "Successfully created new test request"
        else
            render :new
        end
    end 

    def edit
        @test = CovidTest.find_by_id(params[:test_id])
    end

    def update
        @test = CovidTest.find_by_id(params[:test_id])
        @user = User.find_by_id(@test.user_id)
        if @test.update(edit_test_param)
            redirect_to show_tests_path(@user), notice: "Successfully updated the test request"
        else 
            render :edit
        end
    end

    private

    def create_test_param
        params.require(:covid_test).permit(:test_date)
    end

    def edit_test_param
        params.require(:covid_test).permit(:actual_test_date, :test_status)
    end
end