class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :type
      t.integer :hp
      t.integer :damage
      t.integer :user_id

      t.timestamps
    end
  end
end
