# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

require 'rails_helper'

describe User do
  let(:user) do
    create(:user)
  end

  it 'is valid with all fields' do
    expect(build(:user)).to be_valid
  end

  it 'is invalid without name' do
    a = build(:user, name: nil)
    a.valid?
    expect(a.errors[:name]).to eq ["can't be blank"]
  end

  it 'is invalid without email' do
    a = build(:user, email: nil)
    a.valid?
    expect(a.errors[:email]).to eq ["can't be blank"]
  end
end
