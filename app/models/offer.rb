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
#
require 'elasticsearch/model'


class Offer < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_many :rent_types
  has_one :category
  belongs_to :user

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :title, analyzer: 'english'
      indexes :description, analyzer: 'english'
    end
  end

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
