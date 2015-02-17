class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :address
      t.string :postal_code
      t.string :house_number
      t.string :zip_code
      t.string :room_size
      t.string :cost_per_month
      t.string :deposit
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
