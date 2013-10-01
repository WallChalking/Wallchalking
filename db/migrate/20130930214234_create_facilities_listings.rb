class CreateFacilitiesListings < ActiveRecord::Migration
  def up
    create_table :facilities_listings, :id => false do |t|
      t.integer :facility_id
      t.integer :listing_id
    end
  end

  def down
    drop_table :facilities_listings
  end
end
