require 'json'
require 'byebug'

User.delete_all
Play.delete_all
Player.delete_all
Move.delete_all

User.create(username:'mm', email: 'mm@m.com', password: "123")
Play.create(user_id: 1, title: "Triangle Offense")
Play.create(user_id: 1, title: "Urban Paradise '18")
Play.create(user_id: 1, title: "Omaha Omaha")
Play.create(user_id: 1, title: "THS Marching Band '12 - September")