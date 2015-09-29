class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :interests

      t.timestamps null: false
    end
  end
end
