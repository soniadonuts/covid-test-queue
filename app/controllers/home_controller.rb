class HomeController < ApplicationController
    def index
        if Current.user.present? 
            if Current.user.user_role == 1
                @users = User.all.where("id != ?", Current.user.id)
            else
                @tests = Current.user.covid_tests if Current.user.present?
            end
        end
    end

end