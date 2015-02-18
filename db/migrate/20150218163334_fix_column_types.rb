class FixColumnTypes < ActiveRecord::Migration
  def change
    change_column :advertises, :price, :decimal
    change_column :advertises, :duration, :integer
    change_column :advertises, :from_date, :datetime
    change_column :advertises, :until_date, :datetime
    change_column :advertises, :active, :boolean, default: true
    change_column :cities, :population, :integer
    change_column :cities, :medium_salary, :decimal
    change_column :cities, :medium_rent, :decimal
    change_column :cities, :medium_rent, :decimal
    change_column :city_districts, :population, :integer
    change_column :city_districts, :medium_rent, :decimal
    change_column :countries, :population, :integer
    change_column :offers, :cost_per_month, :integer
    change_column :offers, :cost_per_month, :integer
    change_column :offers, :room_size, :integer
  end
end
