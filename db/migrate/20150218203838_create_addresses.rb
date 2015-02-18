class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :related_subject_id
      t.string :related_subject_type
      t.string :address1
      t.string :address2
      t.string :neiborghood
      t.integer :county_id
      t.string :state_id
      t.integer :country_id
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
