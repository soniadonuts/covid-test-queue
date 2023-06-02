class RegistrationsController < ApplicationController

    before_action :only_guest_user, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end

    end


    private

    def user_params
        params.require(:user).permit(:name, :surname, :gender, :dob, :citizen_id, :address, :contact_number, :password, :password_confirmation)
    end
end