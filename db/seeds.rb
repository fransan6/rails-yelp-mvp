# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroyed database'
Restaurant.destroy_all

puts 'Creating database'

50.times do
  restaurant = Restaurant.create(
    name: Faker::Book.title,
    address: Faker::Movies::LordOfTheRings.location,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: "07#{rand(10**9)}"
  )
  puts "Added restaurant id #{restaurant.id}"
end

puts 'Finished'

# rails db:migrate RAILS_ENV=test
