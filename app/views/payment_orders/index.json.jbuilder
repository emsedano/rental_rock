json.array!(@payment_orders) do |payment_order|
  json.extract! payment_order, :id, :contract_id, :payment_date, :payment_planned, :receipt, :status, :amount
  json.url payment_order_url(payment_order, format: :json)
end
