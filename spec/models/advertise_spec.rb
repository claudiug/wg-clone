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
#  offer_id   :integer
#

require 'rails_helper'

describe Advertise do
  let(:advertise) do
    create(:advertise)
  end

  it 'is valid with all fields' do
    expect(build(:advertise)).to be_valid
  end

  it 'is invalid without price' do
    a = build(:advertise, price: nil)
    a.valid?
    expect(a.errors[:price]).to eq ["can't be blank"]
  end

  it 'is invalid without proper duration' do
    a = build(:advertise, duration: 1.0)
    a.valid?
    expect(a.errors[:duration]).to eq ["must be an integer"]
  end

  it 'is invalid without from_date' do
    a = build(:advertise, from_date: nil)
    a.valid?
    expect(a.errors[:from_date]).to eq ["can't be blank"]
  end

  it 'is invalid without until_date' do
    a = build(:advertise, until_date: nil)
    a.valid?
    expect(a.errors[:until_date]).to eq ["can't be blank"]
  end

  it 'is invalid without active' do
    a = build(:advertise, active: nil)
    a.valid?
    expect(a.errors[:active]).to eq ["can't be blank"]
  end
end
