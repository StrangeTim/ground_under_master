# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do

  Song.create(name: 'Butt Rock', genre: 'Electro House', key: '7A', bpm: '130', description: 'Big drop', price: 5)
end

if !User.any?
  User.create(email: 'artist@test.com', password: 'password', artist_name: 'Deadmau5p00l', artist: true, name: 'Bob Denver', money: '125', description: 'maouse head mofo')
  User.create(email: 'user@test.com', password: 'password', artist: false, name: 'Fan Blow', money: '500', description: 'I am a fan')
end
