json.array!(@counties) do |county|
  json.extract! county, :id, :name, :country_id, :state_id
  json.url county_url(county, format: :json)
end
