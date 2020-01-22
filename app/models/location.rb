class Location < ApplicationRecord
  has_many :items, as: :imageable

  def self.start_room
    self.all.first
  end
end
