# == Schema Information
#
# Table name: offers
#
#  id             :integer          not null, primary key
#  address        :string
#  postal_code    :string
#  house_number   :string
#  zip_code       :string
#  room_size      :string
#  cost_per_month :string
#  deposit        :string
#  title          :string
#  description    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  city_id        :integer
#  offer_image    :string
#

require 'elasticsearch/model'


class Offer < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_many :rent_types
  has_one :category
  belongs_to :user
  belongs_to :city

  attachment :offer_image

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :title, analyzer: 'english'
      indexes :description, analyzer: 'english'
    end
  end

  #TODO response is hashies witch is quite slow. Maybe raw response -> struct
  def self.search(query)
    __elasticsearch__.search(
        {
          query: {
              multi_match: {
                  query: query,
                  fields: ['title^10', 'description']
              }
          }
        }
    )
  end
end

Offer.import

# o = Offer.first
# File.open("/home/claudiu/Downloads/foo.jpg", "rb") do |file|
#   o.offer_image = file
# end
# o.save
