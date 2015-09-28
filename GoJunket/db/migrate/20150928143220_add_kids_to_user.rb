class AddKidsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :kids, :boolean
  end
end
