# == Schema Information
#
# Table name: offers
#
#  id             :integer          not null, primary key
#  address        :string
#  postal_code    :string
#  house_number   :string
#  zip_code       :string
#  room_size      :integer
#  cost_per_month :integer
#  deposit        :string
#  title          :string
#  description    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  city_id        :integer
#  offer_image_id :string
#

require 'spec_helper'

describe Offer do
  let(:offer) do
    create(:offer)
  end
end
