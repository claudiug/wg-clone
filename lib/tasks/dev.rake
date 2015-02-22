namespace :dev do
  desc "Add fake data for testing"
  task populate_db: :environment do
    require 'faker'
    City.delete_all
    Offer.delete_all
    Category.delete_all
    RentType.delete_all
    country = Country.create!(name: "Germany", description: "dedede", population: 22222)
    City.create!(name: "Berlin", country_id: country.id, population: 350000, medium_salary: 111, medium_rent: 222)
    City.create!(name: "Bonn", country_id: country.id, population: 350000, medium_salary: 111, medium_rent: 222)

    10.times do |n|
      Offer.create!(address: "ffff",
                    postal_code: "ddddd",
                    house_number: "2222",
                    zip_code: "223",
                    room_size: "222",
                    cost_per_month: 1234,
                    deposit: "121",
                    title: "wewewe",
                    description: "dedede",
                    city_id: City.where(name: "Berlin").first)
    end

    10.times do |n|
      Offer.create!(address: "ffff",
                    postal_code: "ddddd",
                    house_number: "2222",
                    zip_code: "223",
                    room_size: "222",
                    cost_per_month: 1234,
                    deposit: "121",
                    title: "wewewe",
                    description: "dedede",
                    city_id: City.where(name: "Bonn").first)
    end

    Offer.all.each do |o|
      File.open("/home/claudiu/Downloads/foo.jpg", "rb") do |file|
        o.offer_image = file
        o.save
      end
    end

    Category.create!(name: "hmmm", offer_id: Offer.first.id, description: "demo")
    RentType.create!(name: "long", offer_id: Offer.first.id)
  end
end
