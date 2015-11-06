class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :user, index: true, foreign_keys: true

      t.string :title
      t.integer :loan_amount
      t.text :loan_description
      t.string :location
      t.string :category
      t.date :start_date
      t.integer :term
      t.float :interest_rate
      t.string :profile_photo
      t.string :password_digest

      t.timestamps
    end
  end
end
