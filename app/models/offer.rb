# == Schema Information
#
# Table name: offers
#
#  id             :integer          not null, primary key
#  address        :string
#  postal_code    :string
#  house_number   :string
#  zip_code       :string
#  room_size      :string
#  cost_per_month :string
#  deposit        :string
#  title          :string
#  description    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Offer < ActiveRecord::Base
  has_many :rent_types
  has_one :category
  belongs_to :user
end
