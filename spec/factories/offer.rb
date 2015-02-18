FactoryGirl.define do
  factory :offer do
    address "MyString"
    postal_code "MyString"
    house_number "MyString"
    zip_code "MyString"
    room_size "MyString"
    cost_per_month "MyString"
    deposit "MyString"
    title "MyString"
    description "MyString"
    user
    city
    offer_image_id "1"
  end

end