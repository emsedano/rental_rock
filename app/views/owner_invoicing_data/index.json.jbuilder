json.array!(@owner_invoicing_data) do |owner_invoicing_datum|
  json.extract! owner_invoicing_datum, :id, :owner_id, :fiscal_person, :rfc, :fiscal_name, :address1, :address2, :neiborghood, :county, :, :country_id, :zipcode
  json.url owner_invoicing_datum_url(owner_invoicing_datum, format: :json)
end
