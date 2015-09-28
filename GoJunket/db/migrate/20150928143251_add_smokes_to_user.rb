class AddSmokesToUser < ActiveRecord::Migration
  def change
  	add_column :users, :smokes, :boolean
  end
end
