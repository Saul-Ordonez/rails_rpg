class Item < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
