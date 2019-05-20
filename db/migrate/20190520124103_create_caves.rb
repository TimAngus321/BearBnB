class CreateCaves < ActiveRecord::Migration[5.2]
  def change
    create_table :caves do |t|
      t.string :address
      t.integer :square_meters
      t.boolean :availability
      t.integer :occupancy
      t.integer :price_per_night
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
