class AddRentDepositColumns < ActiveRecord::Migration
  def up
    add_column :listings, :monthly_rent, :decimal, :precision => 8, :scale => 2, :null => false
    add_column :listings, :deposit_amount, :decimal, :precision => 8, :scale => 2, :default => 0
  end

  def down
    remove_column :listings, :monthly_rent
    remove_column :listings, :deposit_amount
  end
end
