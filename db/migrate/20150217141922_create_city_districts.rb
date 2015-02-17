class CreateCityDistricts < ActiveRecord::Migration
  def change
    create_table :city_districts do |t|
      t.string :name
      t.string :population
      t.string :salary
      t.string :medium_rent

      t.timestamps null: false
    end
  end
end
