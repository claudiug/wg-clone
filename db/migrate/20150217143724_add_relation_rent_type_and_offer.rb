class AddRelationRentTypeAndOffer < ActiveRecord::Migration
  def change
    add_column :rent_types, :offer_id, :integer
  end
end
