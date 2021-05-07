# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 
  user = User.create(first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     description: Faker::Lorem.sentences(2).fact,
                     email: Faker::Internet.email,
                     age: Faker::Number.within(range: 13..70)
                     city_id: City.all.sample.id
                     )
end

puts "Les 10 users sont ready ;)"

10.times do
  city = City.create(city_name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

puts "Les 10 villes sont prêtent !"

20.times do
  random_user = User.all.sample.id
  gossip = Gossip.create(title: Faker::Book.title, content: Faker::Lorem.sentences(2), user_id: random_user.id, tag_id: 10)
end

puts "Les gossips sont ok"

10.times do
  tag = Tag.create(title: Faker::Book.title)
end

pm = PrivateMessage.create(content: Faker::GameOfThrones.quote, sender_id: User.all.sample.id, recipient: User.all.sample.id)

