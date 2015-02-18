class FixImageForOffers < ActiveRecord::Migration
  def change
    rename_column :offers, :offer_image, :offer_image_id
  end
end
