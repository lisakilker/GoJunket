class AddRelationshipToUser < ActiveRecord::Migration
  def change
  	add_column :users, :relationship, :integer
  end
end
