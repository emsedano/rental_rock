json.array!(@contracts) do |contract|
  json.extract! contract, :id, :real_estate_id, :renter_id, :payment_period, :amount, :start_date, :ending_date, :first_payment_date, :deposit
  json.url contract_url(contract, format: :json)
end
