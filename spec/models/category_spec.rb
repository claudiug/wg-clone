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

require 'rails_helper'

describe Category do
  let(:category) do
    create(:category)
  end

  it 'is valid with all fields' do
    expect(build(:category)).to be_valid
  end

  it 'is invalid without name' do
    a = build(:category, name: nil)
    a.valid?
    expect(a.errors[:name]).to eq ["can't be blank"]
  end
end
