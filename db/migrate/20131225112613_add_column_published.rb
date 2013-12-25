class AddColumnPublished < ActiveRecord::Migration
  def up
    add_column :listings, :published, :boolean, :default => false
  end

  def down
    remove_column :listings, :published
  end
end
