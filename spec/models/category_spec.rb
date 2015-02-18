# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  offer_id    :integer
#

require 'spec_helper'

describe Category do
  let(:category) do
    create(:category)
  end
end
