class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :real_estate_id
      t.integer :renter_id
      t.string :payment_period
      t.decimal :amount, :precision => 8, :scale => 2
      t.date :start_date
      t.date :ending_date
      t.date :first_payment_date
      t.decimal :deposit, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
