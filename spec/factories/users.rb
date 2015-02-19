# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

FactoryGirl.define do
  factory :user do
    sequence :name do |x|
      "name_#{x}_amazing"
    end
    sequence :email do |x|
      "email_#{x}@example.net"
    end
    password "qwe123"
  end

end
