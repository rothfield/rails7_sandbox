class CustomerMachine < ApplicationRecord
  belongs_to :customer, counter_cache: true
  belongs_to :machine
end
