class Customer < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :customer_machines, dependent: :destroy
  has_many :machines, through: :customer_machines, dependent: :destroy
end
