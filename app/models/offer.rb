class Offer < ActiveRecord::Base
  has_many :rent_types
  has_one :category
end
