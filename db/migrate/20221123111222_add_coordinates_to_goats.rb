class AddCoordinatesToGoats < ActiveRecord::Migration[7.0]
  def change
    add_column :goats, :address, :text
    add_column :goats, :latitude, :float
    add_column :goats, :longitude, :float
  end
end
