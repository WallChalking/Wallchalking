class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :country
      t.text :description
      t.integer :beds
      t.integer :bathrooms
      t.integer :size
      t.references :facility

      t.timestamps
    end
    add_index :listings, :facility_id
  end
end
