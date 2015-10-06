class AddTimesToMessage < ActiveRecord::Migration
  def change
  	add_column :messages, :times, :string
  end
end
