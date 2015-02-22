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

class Advertise < ActiveRecord::Base
  validates :price, presence: true
  validates :duration, numericality: {only_integer: true}
  validates :from_date, presence: true
  validates :until_date, presence: true
  validates :active, presence: true
end
