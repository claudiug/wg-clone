json.array!(@countries) do |country|
  json.extract! country, :id, :name, :description, :population
  json.url country_url(country, format: :json)
end
