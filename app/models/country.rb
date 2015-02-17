# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  population  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Country < ActiveRecord::Base
  has_many :cities
end
