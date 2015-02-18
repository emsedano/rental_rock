json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_order_id, :payment_date, :amount, :status, :reference, :uuid
  json.url payment_url(payment, format: :json)
end
