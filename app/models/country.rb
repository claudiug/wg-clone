# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  population  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Country < ActiveRecord::Base
  has_many :cities
  validates :name, presence: true
  validates :description, presence: true
  validates :population, presence: true
end
