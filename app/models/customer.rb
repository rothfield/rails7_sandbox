class Customer < ApplicationRecord
  validates_presence_of :name
  has_many :customer_machines
  has_many :machines, through: :customer_machines
end
