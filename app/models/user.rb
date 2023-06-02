class User < ApplicationRecord
    has_many :covid_tests, dependent: :delete_all
    has_secure_password

    validates :name, presence: true
    validates :surname, presence: true
    validates :gender, presence: true
    validates :dob, presence: true
    validates :citizen_id, presence: true, uniqueness: true, :length => { :minimum => 13, :maximum => 13 }, :numericality => true
    validates :contact_number, presence: true, :length => { :minimum => 10, :maximum => 10 }, :numericality => true
    validates :address, presence: true
    validates :password, presence: true
    validates :password_confirmation, presence: true
    
end
