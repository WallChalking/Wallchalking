class AddColumnUserId < ActiveRecord::Migration
  def up
    add_column :listings, :user_id, :integer, :null => false
  end

  def down
    remove_column :listings, :user_id
  end
end
