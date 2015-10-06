class AddActivitiesToMessage < ActiveRecord::Migration
  def change
  	add_column :messages, :activities, :string
  end
end
