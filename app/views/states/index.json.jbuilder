json.array!(@states) do |state|
  json.extract! state, :id, :name, :alias, :country_id
  json.url state_url(state, format: :json)
end
