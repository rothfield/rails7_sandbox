require './db/seed_data.rb'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if Machine.count.zero?
  100.times do
    Machine.create(name: Faker::Vehicle.manufacture + " " + Faker::Construction.heavy_equipment)
    # add machine checkpoints
  end
else
  puts "Already seeded machines!"
end
if Customer.count.zero?
  wineries=SeedData::WINERIES
  100.times do |i|
    customer=Customer.create(name: wineries.sample)
    next if !customer.valid?
    rand(5..14).times do
      customer.customer_machines.create  machine: Machine.all.sample, serial_number: Faker::Number::leading_zero_number 
    end
  end
  5.times do |i|
    Customer.create(name: wineries.sample)
  end
else
  puts "Already seeded customers!"
end
