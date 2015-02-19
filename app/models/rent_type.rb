# == Schema Information
#
# Table name: rent_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  offer_id   :integer
#

class RentType < ActiveRecord::Base
  belongs_to :offer
  validates :name, presence: true
end
