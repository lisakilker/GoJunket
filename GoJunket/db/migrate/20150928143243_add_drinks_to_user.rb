class AddDrinksToUser < ActiveRecord::Migration
  def change
  	add_column :users, :drinks, :integer
  end
end
