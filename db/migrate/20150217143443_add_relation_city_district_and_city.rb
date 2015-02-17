class AddRelationCityDistrictAndCity < ActiveRecord::Migration
  def change
    add_column :city_districts, :city_id, :integer
  end
end
