class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.decimal :price
      t.string :currency
      t.string :commune
      t.string :address
      t.decimal :area
      t.integer :bedrooms
      t.integer :bathrooms
      t.decimal :latitude
      t.decimal :longitude
      t.text :description

      t.timestamps
    end
  end
end
