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

require 'rails_helper'

describe City do
  let(:city) do
    create(:city)
  end

  it 'is valid with all fields' do
    expect(build(:city)).to be_valid
  end

  it 'is invalid without name' do
    a = build(:city, name: nil)
    a.valid?
    expect(a.errors[:name]).to eq ["can't be blank"]
  end

  it 'is invalid without population' do
    a = build(:city, population: nil)
    a.valid?
    expect(a.errors[:population]).to eq ["is not a number"]
  end

  it 'is invalid without medium salary' do
    a = build(:city, medium_salary: nil)
    a.valid?
    expect(a.errors[:medium_salary]).to eq ["can't be blank"]
  end

  it 'is invalid without medium rent' do
    a = build(:city, medium_rent: nil)
    a.valid?
    expect(a.errors[:medium_rent]).to eq ["can't be blank"]
  end
end
