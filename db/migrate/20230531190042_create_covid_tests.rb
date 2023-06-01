class CreateCovidTests < ActiveRecord::Migration[5.2]
  def change
    create_table :covid_tests do |t|
      t.belongs_to :user, foreign_key: true
      t.date :test_date, null: false
      t.date :actual_test_date
      t.string :test_status, null: false, default: "waiting"

      t.timestamps
    end
  end
end
