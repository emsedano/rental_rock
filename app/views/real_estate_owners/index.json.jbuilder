json.array!(@real_estate_owners) do |real_estate_owner|
  json.extract! real_estate_owner, :id, :firstname, :lastname, :secondlastname, :phone, :mobile, :email, :bank_account, :clabe, :bank_name, :notes
  json.url real_estate_owner_url(real_estate_owner, format: :json)
end
