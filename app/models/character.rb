class Character < ApplicationRecord
  has_many :items, as: :imageable
end
