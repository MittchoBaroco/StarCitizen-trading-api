class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :location_type
      t.integer :parent_id, index: true

      t.timestamps
    end
  end
end
