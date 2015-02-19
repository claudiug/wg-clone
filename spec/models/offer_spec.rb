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

require 'rails_helper'

describe Offer do
  let(:offer) do
    create(:offer)
  end

  it 'is valid with all fields' do
    expect(build(:offer)).to be_valid
  end

  it 'is invalid without address' do
    a = build(:offer, address: nil)
    a.valid?
    expect(a.errors[:address]).to eq ["can't be blank"]
  end

  it 'is invalid without postal_code' do
    a = build(:offer, postal_code: nil)
    a.valid?
    expect(a.errors[:postal_code]).to eq ["can't be blank"]
  end

  it 'is invalid without house_number' do
    a = build(:offer, house_number: nil)
    a.valid?
    expect(a.errors[:house_number]).to eq ["can't be blank"]
  end

  it 'is invalid without zip_code' do
    a = build(:offer, zip_code: nil)
    a.valid?
    expect(a.errors[:zip_code]).to eq ["can't be blank"]
  end

  it 'is invalid without room_size' do
    a = build(:offer, room_size: nil)
    a.valid?
    expect(a.errors[:room_size]).to eq ["can't be blank"]
  end

  it 'is invalid without cost_per_month' do
    a = build(:offer, cost_per_month: nil)
    a.valid?
    expect(a.errors[:cost_per_month]).to eq ["can't be blank"]
  end

  it 'is invalid without deposit' do
    a = build(:offer, deposit: nil)
    a.valid?
    expect(a.errors[:deposit]).to eq ["can't be blank"]
  end

  it 'is invalid without title' do
    a = build(:offer, title: nil)
    a.valid?
    expect(a.errors[:title]).to eq ["can't be blank"]
  end

  it 'is invalid without description' do
    a = build(:offer, description: nil)
    a.valid?
    expect(a.errors[:description]).to eq ["can't be blank"]
  end
end
