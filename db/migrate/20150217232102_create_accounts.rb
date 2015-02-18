class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :company
      t.string :firstname
      t.string :lastname
      t.string :second_lastname
      t.string :genre
      t.string :email
      t.string :phone
      t.string :telephone

      t.timestamps null: false
    end
  end
end
