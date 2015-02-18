json.array!(@billing_data) do |billing_datum|
  json.extract! billing_datum, :id, :fiscal_person, :rfc, :fiscal_name, :address1, :address2, :neiborghood, :county, :, :country_id, :zipcode
  json.url billing_datum_url(billing_datum, format: :json)
end
