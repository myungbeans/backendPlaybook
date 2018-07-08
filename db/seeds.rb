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

Player.create({
    play_id: 1, name:"Prometheus",
    moves_attributes: [{
        startX: 626, 
        startY: 325, 
        endX: 626, 
        endY: 100, 
        startDelay: 0, 
        endDelay: 0, 
        duration: 3
    }]
})
# Move.create(player_id: 1, startX: 626, startY: 325, endX: 626, endY: 100, startDelay: 0, endDelay: 0, duration: 3)