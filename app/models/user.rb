class User < ApplicationRecord
    has_many :covid_tests
    has_secure_password

    # validates :name :surname, presence: true
end
