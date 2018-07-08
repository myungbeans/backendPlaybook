require 'byebug'

class Api::V1::PlayersController < ApplicationController
    
    def create
        @player = Player.new
        @player.play_id = params[:player][:play_id]
        @player.name = params[:player][:name]

        if (@player.save)
            render json: { id: @player.id, name: @player.name, play_id: @player.play_id }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        @player = Player.find(params[:id])

        
        if (@player.save)
            render json: { id: @player.id, name: @player.name, play_id: @player.play_id }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end
end