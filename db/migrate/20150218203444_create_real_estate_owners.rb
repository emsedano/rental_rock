class CreateRealEstateOwners < ActiveRecord::Migration
  def change
    create_table :real_estate_owners do |t|
      t.string :firstname
      t.string :lastname
      t.string :secondlastname
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :bank_account
      t.string :clabe
      t.string :bank_name
      t.string :notes

      t.timestamps null: false
    end
  end
end
