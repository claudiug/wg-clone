# == Schema Information
#
# Table name: advertises
#
#  id         :integer          not null, primary key
#  price      :decimal(, )
#  duration   :integer
#  from_date  :datetime
#  until_date :datetime
#  active     :boolean          default("t")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Advertise do
  let(:advertise) do
    create(:advertise)
  end
end
