class CustomerMachine < ApplicationRecord
  belongs_to :customer
  belongs_to :machine
end
