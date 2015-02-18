class CreateRealEstates < ActiveRecord::Migration
  def change
    create_table :real_estates do |t|
      t.integer :real_estate_owner_id
      t.string :name
      t.string :status
      t.decimal :predial, :precision => 8, :scale => 2
      t.string :property_type
      t.integer :rooms
      t.integer :bathrooms
      t.float :area
      t.text :description
      t.date :build_date
      t.string :location

      t.timestamps null: false
    end
  end
end
