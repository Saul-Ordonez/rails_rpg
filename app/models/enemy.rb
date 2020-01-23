class Enemy < ApplicationRecord
  belongs_to :location

  scope :by_location, -> (location_parameter) do
    where("location_id = #{location_parameter}") 
  end
end
