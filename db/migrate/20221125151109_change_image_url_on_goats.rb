class ChangeImageUrlOnGoats < ActiveRecord::Migration[7.0]
  def change
    remove_column :goats, :image_url, :string
  end
end
