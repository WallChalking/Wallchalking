class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :user
      t.references :listing

      t.timestamps
    end
  end
end
