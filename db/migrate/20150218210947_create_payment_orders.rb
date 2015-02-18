class CreatePaymentOrders < ActiveRecord::Migration
  def change
    create_table :payment_orders do |t|
      t.integer :contract_id
      t.date :payment_date
      t.date :payment_planned
      #t.attachment :receipt
      t.string :status
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end
