class AddColumnImage < ActiveRecord::Migration
  def up
    add_column :listings, :image, :string
  end

  def down
    remove_column :listings, :image
  end
end
