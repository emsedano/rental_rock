json.array!(@accounts) do |account|
  json.extract! account, :id, :username, :company, :firstname, :lastname, :second_lastname, :genre, :email, :phone, :telephone
  json.url account_url(account, format: :json)
end
