class AddDoorToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column(:locations, :door, :string)
  end
end
