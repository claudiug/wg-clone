FactoryGirl.define do
  factory :advertise do
    sequence(:price)
    duration 100
    from_date Time.now
    until_date Time.now
    active true
  end
end