class AddFeesToGoats < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :transport_fee, :integer
    remove_column :bookings, :cleaning_fee, :integer
    add_column :goats, :transport_fee, :integer
    add_column :goats, :cleaning_fee, :integer
    add_column :goats, :price_per_day, :integer
  end
end
