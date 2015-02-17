json.array!(@offers) do |offer|
  json.extract! offer, :id, :address, :postal_code, :house_number, :zip_code, :room_size, :cost_per_month, :deposit, :title, :description
  json.url offer_url(offer, format: :json)
end
