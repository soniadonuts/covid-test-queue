class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :gender, null: false
      t.date :dob, null: false
      t.string :citizen_id, null: false
      t.string :address, null: false
      t.string :contact_number, null: false
      t.integer :user_role, null: false, default: 0
      t.string :password_digest, null: false

      t.timestamps
    end

    add_index :users, :citizen_id, unique: true
  end
end
