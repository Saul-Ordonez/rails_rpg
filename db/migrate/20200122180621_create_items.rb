class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :effect
      t.integer :value
      t.references :imageable, polymorphic: true
      t.timestamps
    end
  end
end
