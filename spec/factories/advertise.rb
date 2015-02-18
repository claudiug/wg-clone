FactoryGirl.define do
  factory :advertise do
    sequence(:price){|n|}
    duration 100
    from_date Time.now
    until_date Time.now
    active true
    price 12
  end
end