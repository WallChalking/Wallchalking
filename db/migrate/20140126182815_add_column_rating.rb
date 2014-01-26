class AddColumnRating < ActiveRecord::Migration
  def up
    add_column :reviews, :rating, :integer
  end

  def down
    remove_column :reviews, :rating
  end
end
