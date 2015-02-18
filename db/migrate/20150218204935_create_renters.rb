class CreateRenters < ActiveRecord::Migration
  def change
    create_table :renters do |t|
      t.string :firstname
      t.string :lastname
      t.string :second_lastname
      t.string :genre
      t.string :email
      t.string :phone
      t.string :mobile
      t.date :born
      t.boolean :require_invoice

      t.timestamps null: false
    end
  end
end
