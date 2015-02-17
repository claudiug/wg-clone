class FixColumnNames < ActiveRecord::Migration
  def change
    rename_column :cities, :merium_rent, :medium_rent
  end
end
