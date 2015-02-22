class PeriodTimeForOffer < ActiveRecord::Migration
  def change
    add_column :offers, :valid_until, :datetime
  end
end
