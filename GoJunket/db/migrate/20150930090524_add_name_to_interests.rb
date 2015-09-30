class AddNameToInterests < ActiveRecord::Migration
  def change
  	add_column :interests, :name, :string
  	add_column :languages, :name, :string
  end
end
