require 'json'
require 'byebug'

User.delete_all
Play.delete_all
Player.delete_all
Moveset.delete_all
Move.delete_all

User.create(username:'myung', email: 'mm@m.com', password: "123")