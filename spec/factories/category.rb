FactoryGirl.define do
  factory :category do
    sequence :name do |x|
      "name_#{x}"
    end
    description "amazing description"
  end

end