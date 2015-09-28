class AddDrinksToUser < ActiveRecord::Migration
  def change
  	add_column :users, :drinks, :boolean
  end
end
