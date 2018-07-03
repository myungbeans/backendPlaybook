require 'byebug'
class Api::V1::PlayersController < ApplicationController
    def create
        @player = Player.new
        @player.play_id = params[:play_id]
        @player.name = params[:name]
        @player.x = params[:x]
        @player.y = params[:y]

        if (@player.save)
            # payload = { id: @player.id, name: @player.name, play_id: @player.play_id }
            # token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'
            render json: { id: @player.id, name: @player.name, play_id: @player.play_id, x:@player.x, y:@player.y }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end
end
