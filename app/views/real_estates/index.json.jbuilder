json.array!(@real_estates) do |real_estate|
  json.extract! real_estate, :id, :real_estate_owner_id, :name, :status, :predial, :property_type, :rooms, :bathrooms, :area, :description, :build_date, :location
  json.url real_estate_url(real_estate, format: :json)
end
