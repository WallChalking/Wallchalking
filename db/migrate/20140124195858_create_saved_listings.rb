class CreateSavedListings < ActiveRecord::Migration
  def change
    create_table :saved_listings, :id => false do |t|
      t.references :user
      t.references :listing      

      t.timestamps
    end
    
    add_index :saved_listings, [:user_id, :listing_id], :unique => true
  end
end
