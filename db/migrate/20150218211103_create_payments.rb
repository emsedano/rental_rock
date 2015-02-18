class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payment_order_id
      t.datetime :payment_date
      t.decimal :amount, :precision => 8, :scale => 2
      t.string :status
      t.string :reference
      t.string :uuid

      t.timestamps null: false
    end
  end
end
