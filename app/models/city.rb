# == Schema Information
#
# Table name: cities
#
#  id            :integer          not null, primary key
#  name          :string
#  population    :integer
#  medium_salary :decimal(, )
#  medium_rent   :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  country_id    :integer
#

class City < ActiveRecord::Base
  belongs_to :country
  has_many :city_districts
  has_many :offers
  validates :name, presence: true
  validates :population, numericality: {only_integer: true}
  validates :medium_rent, presence: true
  validates :medium_salary, presence: true
end
