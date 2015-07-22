# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do

  Artist.create(name:'john denver', description: 'country weedrock', money: '$250')
end

if !User.any?
  User.create(email: 'test@test.com', password: 'password')
end
