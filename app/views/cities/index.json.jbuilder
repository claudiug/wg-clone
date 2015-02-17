json.array!(@cities) do |city|
  json.extract! city, :id, :name, :population, :medium_salary, :merium_rent
  json.url city_url(city, format: :json)
end
