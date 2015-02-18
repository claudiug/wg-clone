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

require 'spec_helper'

describe RentType do
  let(:rent_type) do
    create(:rent_type)
  end
end
