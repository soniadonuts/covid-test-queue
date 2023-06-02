class CovidTest < ApplicationRecord
  belongs_to :user

  validates :test_date, presence: true
end
