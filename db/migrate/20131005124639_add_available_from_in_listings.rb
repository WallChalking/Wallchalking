class AddAvailableFromInListings < ActiveRecord::Migration
  def change
    add_column :listings, :available_from, :datetime
  end
end
