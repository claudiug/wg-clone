class AddBelongToAdvertise < ActiveRecord::Migration
  def change
    add_column :advertises, :offer_id, :integer
  end
end
