class AddColumnPropertyFor < ActiveRecord::Migration
  def up
    add_column :listings, :property_for, :string, :null => false
  end

  def down
    remove_column :listings, :property_for
  end
end
