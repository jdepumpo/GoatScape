# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

User.create(email: "gerardo.wemans@gmail.com", password: "123456", password_confirmation: "123456")
Goat.destroy_all
cat = ["Yoga Goat", "Grazing Goat", "Company Goat", "Birthday Goat", "Decoration Goat", "Seeing Goat", "Guardian Goat", "Entertaining Goat"]
10.times do |i|
  goat = Goat.create(name: Faker::Name.first_name, category: cat[rand(0..7)], location: Faker::Address.state, age: rand(1..20), user_id: 1, image_url: "goat_d2m3nl")
  puts "goat #{i} created"
  puts goat.name
  puts goat.user_id
end
