class Checkpoint < ApplicationRecord
  belongs_to :checkpoint_category
  validates_presence_of :name
end
