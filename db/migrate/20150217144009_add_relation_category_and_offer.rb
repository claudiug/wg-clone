class AddRelationCategoryAndOffer < ActiveRecord::Migration
  def change
    add_column :categories, :offer_id, :integer
  end
end
