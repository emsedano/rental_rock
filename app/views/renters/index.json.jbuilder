json.array!(@renters) do |renter|
  json.extract! renter, :id, :firstname, :lastname, :second_lastname, :genre, :email, :phone, :mobile, :born, :require_invoice
  json.url renter_url(renter, format: :json)
end
