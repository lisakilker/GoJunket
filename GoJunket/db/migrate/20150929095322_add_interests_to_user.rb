class AddInterestsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :interests, :integer
  end
end
