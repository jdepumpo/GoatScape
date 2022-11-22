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
urls = ["yoann-donze-FGYgDfL6Vxg-unsplash_zekfrs", "dusan-veverkolog-6yPzo6rjNgU-unsplash_wclvdp", "skylar-jean-e7sobIPbpZQ-unsplash_pzir0w", "thomas-de-luze-kqhTq4QiZGA-unsplash_jfi6eb", "dusan-veverkolog-afYq2hfi_ak-unsplash_ngkpvv", "thomas-jarrand-SClPUUkGD8M-unsplash_rv7urx", "fabrizio-conti-b5rPuIBFeME-unsplash_dsaaqy", "strvnge-films-P_SSMIgqjY0-unsplash_lxlopl", "joshua-wilking-GjlypNQfTD4-unsplash_eoy5wd", "ray-aucott-xB0e8bDV4ww-unsplash_hbo5li", "sergiu-valena-so8R5rTDTXM-unsplash_x5fqsk", "robin-gaillot-drevon-gPBueqE_o0c-unsplash_y2mguf", "peter-neumann-mUtYXnpW1ts-unsplash_xdygbb", "robin-gaillot-drevon-qRnh-zosks4-unsplash_sfmjaq", "peter-lloyd-o96Lf_wuM5o-unsplash_mevzkm", "logan-weaver-lgnwvr-9EiQ5BepZhQ-unsplash_zq05vi", "florian-van-duyn-J9wZ6D2kYPw-unsplash_zgrnzl", "marwan-ahmed-_e_fe1OF-AI-unsplash_hcdsio", "oytun-babur-ozen-rfV53ZkGcGA-unsplash_sb6vwe", "marko-blazevic-5ExxF9SOHdM-unsplash_njvwjh", "nandhu-kumar-jAMcUbsTvWE-unsplash_kmcfu8", "goat_d2m3nl0", "jimmy_xpmz8j"]
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis ipsum eget lorem ultrices ullamcorper. Sed lectus ipsum, ullamcorper non tellus ut, fermentum auctor purus. Quisque ultricies orci vitae quam fermentum feugiat. Aenean facilisis volutpat ipsum. Pellentesque consequat est enim, ac tristique nisl tristique eget. Sed in dui tristique, iaculis neque condimentum, pharetra sapien. Cras maximus tempus elementum. Nullam non enim risus. Nullam ornare ligula non justo rutrum, nec tristique enim molestie."
10.times do |i|
  goat = Goat.create(name: Faker::Name.first_name, category: cat[rand(0..7)], location: Faker::Address.state, age: rand(1..20), user_id: 1, image_url: urls[rand(0..23)], description: lorem, rating: rand(1..5))
  puts "goat #{i} created"
  puts goat.name
  puts goat.user_id
end
