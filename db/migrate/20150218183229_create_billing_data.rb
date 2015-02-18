class CreateBillingData < ActiveRecord::Migration
  def change
    create_table :billing_data do |t|
      t.string :fiscal_person
      t.string :rfc
      t.string :fiscal_name
      t.string :address1
      t.string :address2
      t.string :neiborghood
      t.string :county
      t.integer :state_id
      t.integer :country_id
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
