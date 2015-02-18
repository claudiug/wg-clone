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
end
