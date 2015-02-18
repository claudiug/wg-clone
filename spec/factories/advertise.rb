FactoryGirl.define do
  factory :advertise do
    sequence :name do |x|
      "name_#{x}"
    end
    sequence :email do |x|
      "email_#{x}@example.net"
    end
    offer
  end
end