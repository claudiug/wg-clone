class CreateRentTypes < ActiveRecord::Migration
  def change
    create_table :rent_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
