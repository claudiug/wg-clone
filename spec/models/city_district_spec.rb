# == Schema Information
#
# Table name: city_districts
#
#  id          :integer          not null, primary key
#  name        :string
#  population  :integer
#  salary      :string
#  medium_rent :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  city_id     :integer
#

require 'rails_helper'

describe CityDistrict do
  let(:city_district) do
    create(:city_district)
  end

  it 'is valid with all fields' do
    expect(build(:city_district)).to be_valid
  end

  it 'is invalid without price' do
    a = build(:city_district, name: nil)
    a.valid?
    expect(a.errors[:name]).to eq ["can't be blank"]
  end

  it 'is invalid without population' do
    a = build(:city_district, population: nil)
    a.valid?
    expect(a.errors[:population]).to eq ["is not a number"]
  end

  it 'is invalid without salary' do
    a = build(:city_district, salary: nil)
    a.valid?
    expect(a.errors[:salary]).to eq ["can't be blank"]
  end

  it 'is invalid without medium_rent' do
    a = build(:city_district, medium_rent: nil)
    a.valid?
    expect(a.errors[:medium_rent]).to eq ["can't be blank"]
  end
end
