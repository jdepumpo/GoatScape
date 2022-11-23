class RemoveLocationFromGoats < ActiveRecord::Migration[7.0]
  def change
    remove_column :goats, :location, :string
  end
end
