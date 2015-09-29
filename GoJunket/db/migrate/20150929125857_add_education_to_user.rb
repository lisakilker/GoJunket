class AddEducationToUser < ActiveRecord::Migration
  def change
  	add_column :users, :education, :integer
  end
end
