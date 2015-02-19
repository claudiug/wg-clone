# == Schema Information
#
# Table name: city_districts
#
#  id          :integer          not null, primary key
#  name        :string
#  population  :integer
#  salary      :string
#  medium_rent :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  city_id     :integer
#

class CityDistrict < ActiveRecord::Base
  belongs_to :city
  validates :name, presence: true
  validates :population, numericality: {only_integer: true}
  validates :salary, presence: true
  validates :medium_rent, presence: true
end
