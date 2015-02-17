class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.string :price
      t.string :duration
      t.string :from_date
      t.string :until_date
      t.string :active

      t.timestamps null: false
    end
  end
end
