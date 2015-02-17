# == Schema Information
#
# Table name: advertises
#
#  id         :integer          not null, primary key
#  price      :string
#  duration   :string
#  from_date  :string
#  until_date :string
#  active     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Advertise < ActiveRecord::Base
end
