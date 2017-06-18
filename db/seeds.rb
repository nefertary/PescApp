# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
8.times do |n|
  Notice.create!({ user: "John Doe", date: Time.now, body: "Mi pesca del día!", image: (n.to_s+".jpg") })
end