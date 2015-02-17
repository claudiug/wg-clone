namespace :dev do
  desc "Add fake data for testing"
  task populate_db: :environment do
    require 'faker'
    #TODO use faker and add more data
    country = Country.create!(name: "Germany")
    city = City.create!(name: "Berlin", country_id: country.id)
    offer = Offer.create(title: "this is an offer")
    category = Category.create!(name: "hmmm", offer_id: offer.id)
    rent_type = RentType.create!(name: "long", offer_id: offer.id)
    user = User.create!(name: "foo", email: "email@example.net", offer_id: offer.id)
  end

end
