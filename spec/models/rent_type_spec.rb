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

require 'rails_helper'

describe RentType do
  let(:rent_type) do
    create(:rent_type)
  end

  it 'is valid with all fields' do
    expect(build(:rent_type)).to be_valid
  end

  it 'is invalid without name' do
    a = build(:rent_type, name: nil)
    a.valid?
    expect(a.errors[:name]).to eq ["can't be blank"]
  end
end
