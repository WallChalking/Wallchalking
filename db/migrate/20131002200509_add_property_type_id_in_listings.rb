class AddPropertyTypeIdInListings < ActiveRecord::Migration
  def up
    add_column :listings, :property_type_id, :integer, :null => false
  end

  def down
    remove_column :listings, :property_type_id
  end
end
