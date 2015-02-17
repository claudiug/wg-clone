class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :population
      t.string :medium_salary
      t.string :merium_rent

      t.timestamps null: false
    end
  end
end
