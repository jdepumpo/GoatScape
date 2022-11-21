class CreateGoats < ActiveRecord::Migration[7.0]
  def change
    create_table :goats do |t|
      t.string :category
      t.string :name
      t.string :location
      t.text :description
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
