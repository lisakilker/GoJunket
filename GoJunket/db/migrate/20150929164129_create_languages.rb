class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :languages

      t.timestamps null: false
    end
  end
end
