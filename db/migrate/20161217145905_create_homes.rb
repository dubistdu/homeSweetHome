class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.text :description
      t.integer :number_of_bedrooms
      t.integer :number_of_bathrooms
      t.integer :square_foot
      t.integer :price
      t.boolean :swimming_pool
      t.boolean :parking_garage
      t.string :parking_garage_type
      t.string :parking_garage_size
      t.string :image
      t.string :images_id
      t.integer :agent_id

      t.timestamps
    end
  end
end
