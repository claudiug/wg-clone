# == Schema Information
#
# Table name: cities
#
#  id            :integer          not null, primary key
#  name          :string
#  population    :integer
#  medium_salary :decimal(, )
#  medium_rent   :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  country_id    :integer
#

require 'spec_helper'

describe City do
  let(:city) do
    create(:city)
  end
end
