class CheckpointCategory < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :short_name
end
