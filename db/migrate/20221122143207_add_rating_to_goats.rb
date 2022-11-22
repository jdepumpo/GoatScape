class AddRatingToGoats < ActiveRecord::Migration[7.0]
  def change
    add_column :goats, :rating , :integer
  end
end
