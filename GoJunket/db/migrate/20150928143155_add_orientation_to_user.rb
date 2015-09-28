class AddOrientationToUser < ActiveRecord::Migration
  def change
  	add_column :users, :orientation, :integer
  end
end
