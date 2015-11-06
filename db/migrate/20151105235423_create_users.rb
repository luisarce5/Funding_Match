class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :company_name
      t.text :user_description
      t.string :town
      t.integer :capital_amount
      t.integer :score
      t.boolean :borrower
      t.string :profile_photo
      t.string :password_digest

      t.timestamps

    end
  end
end
