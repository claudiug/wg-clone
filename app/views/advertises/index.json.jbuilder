json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :price, :duration, :from_date, :until_date, :active
  json.url advertise_url(advertise, format: :json)
end
