class CreateEnemies < ActiveRecord::Migration[5.2]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :hp
      t.integer :damage
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
