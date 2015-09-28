class AddSmokesToUser < ActiveRecord::Migration
  def change
  	add_column :users, :smokes, :integer
  end
end
