class DropColumnInterestsForInterests < ActiveRecord::Migration
  def change
  	remove_column :interests, :interests
  	remove_column :languages, :languages
  end
end
