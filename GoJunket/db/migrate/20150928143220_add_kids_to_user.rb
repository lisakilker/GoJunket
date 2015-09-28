class AddKidsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :kids, :integer
  end
end
