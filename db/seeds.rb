# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating Flats...'
apt = { name: 'C/ Unanimidad 56', address: 'VV', description: 'italian', price_per_night: 125, number_of_guests: 2 }
apt2 = { name: 'C/ Unanimidad 57', address: 'VV', description: 'italian', price_per_night: 130, number_of_guests: 3 }
apt3 = { name: 'C/ Unanimidad 58', address: 'VV', description: 'italian', price_per_night: 135, number_of_guests: 4 }
apt4 = { name: 'C/ Unanimidad 59', address: 'VV', description: 'italian', price_per_night: 140, number_of_guests: 5 }
apt5 = { name: 'C/ Unanimidad 60', address: 'VV', description: 'italian', price_per_night: 145, number_of_guests: 6 }

[apt, apt2, apt3, apt4, apt5].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
