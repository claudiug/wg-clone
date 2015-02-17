json.array!(@rent_types) do |rent_type|
  json.extract! rent_type, :id, :name
  json.url rent_type_url(rent_type, format: :json)
end
