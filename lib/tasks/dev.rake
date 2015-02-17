namespace :dev do
  desc "Add fake data for testing"
  task populate_db: :environment do
    require 'faker'
    #TODO use faker and add more data
    country = Country.create!(name: "Germany")
    City.create!(name: "Berlin", country_id: country.id, population: "350000")
    City.create!(name: "Bonn", country_id: country.id, population: "200000")
    City.create!(name: "Munchen", country_id: country.id, population: "1200000")
    City.create!(name: "Hamburg", country_id: country.id, population: "100000")
    City.create!(name: "Koln", country_id: country.id, population: "540000")
    City.create!(name: "Bremen", country_id: country.id, population: "340000")
    City.create!(name: "Stugart", country_id: country.id, population: "1000000")
    City.create!(name: "Ulm", country_id: country.id, population: "200000")
    City.create!(name: "Dormund", country_id: country.id, population: "200000")
    20.times do |n|
      Offer.create!(title: Faker::Lorem.sentence, address: Faker::Address.street_address, postal_code: Faker::Address.country_code,
      description: Faker::Lorem.sentence, user_id: n, city_id: City.find_by(name: "Berlin").id)
    end

    20.times do |n|
      Offer.create!(title: Faker::Lorem.sentence, address: Faker::Address.secondary_address, postal_code: Faker::Address.country_code,
                    description: Faker::Lorem.sentence, user_id: n, city_id: City.find_by(name: "Bonn").id)
    end

    20.times do |n|
      Offer.create!(title: Faker::Lorem.sentence, address: Faker::Address.street_address, postal_code: Faker::Address.country_code,
                    description: Faker::Lorem.sentence, user_id: n, city_id: City.find_by(name: "Munchen").id)
    end

    20.times do |n|
      Offer.create!(title: Faker::Lorem.sentence, address: Faker::Address.secondary_address, postal_code: Faker::Address.country_code,
                    description: Faker::Lorem.sentence, user_id: n, city_id: City.find_by(name: "Hamburg").id)
    end

    20.times do |n|
      Offer.create!(title: Faker::Lorem.sentence, address: Faker::Address.street_address, postal_code: Faker::Address.country_code,
                    description: Faker::Lorem.sentence, user_id: n, city_id: City.find_by(name: "Koln").id)
    end

    20.times do |n|
      Offer.create!(title: Faker::Lorem.sentence, address: Faker::Address.secondary_address, postal_code: Faker::Address.country_code,
                    description: Faker::Lorem.sentence, user_id: n, city_id: City.find_by(name: "Ulm").id)
    end


    Category.create!(name: "hmmm", offer_id: Offer.first.id)
    RentType.create!(name: "long", offer_id: Offer.first.id)
  end

end
