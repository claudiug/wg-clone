# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  population  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

describe Country do
  let(:country) do
    create(:country)
  end

  it 'is valid with all fields' do
    expect(build(:country)).to be_valid
  end

  it 'is invalid without name' do
    a = build(:country, name: nil)
    a.valid?
    expect(a.errors[:name]).to eq ["can't be blank"]
  end

  it 'is invalid without description' do
    a = build(:country, description: nil)
    a.valid?
    expect(a.errors[:description]).to eq ["can't be blank"]
  end

  it 'is invalid without population' do
    a = build(:country, population: nil)
    a.valid?
    expect(a.errors[:population]).to eq ["can't be blank"]
  end
end
