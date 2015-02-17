json.array!(@city_districts) do |city_district|
  json.extract! city_district, :id, :name, :population, :salary, :medium_rent
  json.url city_district_url(city_district, format: :json)
end
