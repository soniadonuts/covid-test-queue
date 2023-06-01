class ApplicationController < ActionController::Base
    before_action :set_current_user
    
    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in
        redirect_to sign_in_path, alert: "You must be signed in to do that" if Current.user.nil?
    end

    def must_be_admin
        redirect_to root_path, alert: "Only admin can do this action" unless Current.user.user_role = 1
    end
end


# FinancesController < ApplicationController
#   before_filter :must_be_admin, only: :edit

#   def edit
#     ...
#   end

#   private

#   def must_be_admin
#     unless current_user && current_user.admin?
#       redirect_to root_path, notice: "Some message"
#     end
#   end
# end