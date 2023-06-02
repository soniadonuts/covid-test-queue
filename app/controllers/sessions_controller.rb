class SessionsController < ApplicationController

    before_action :only_guest_user, only: [:new, :create]

    def new
    end

    def create
        user = User.find_by(citizen_id: params[:citizen_id])

        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in successfully"
        else
            flash.now[:alert] = "Invalid citizen ID or password"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end
