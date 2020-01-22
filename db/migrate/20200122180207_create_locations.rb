class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :room
      t.text :description

      t.timestamps
    end
  end
end
