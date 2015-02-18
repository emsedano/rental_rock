json.array!(@addresses) do |address|
  json.extract! address, :id, :related_subject_id, :related_subject_type, :address1, :address2, :neiborghood, :county_id, :state_id, :country_id, :zipcode
  json.url address_url(address, format: :json)
end
