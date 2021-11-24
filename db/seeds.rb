# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'pry-byebug'

puts 'seeding leh 🌱'
Restaurant.destroy_all
cat = %w[chinese italian japanese french belgian]
10.times do |a|
  @resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: cat.sample
  )
  puts "creating one restaurant: #{@resto.name} #{@resto.address} #{@resto.phone_number} #{@resto.category}"
  # @resto.save
end
# binding.pry
puts 'seeding done 🌱'
