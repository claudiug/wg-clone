# == Schema Information
#
# Table name: cities
#
#  id            :integer          not null, primary key
#  name          :string
#  population    :string
#  medium_salary :string
#  merium_rent   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  country_id    :integer
#

class City < ActiveRecord::Base
  belongs_to :country
  has_many :city_districts
end
