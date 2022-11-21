class AddImageUrLtoGoats < ActiveRecord::Migration[7.0]
  def change
    add_column :goats, :image_url, :string
  end
end
