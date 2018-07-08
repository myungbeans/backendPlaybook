require 'byebug'

class Api::V1::PlayersController < ApplicationController
    before_action
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
        # @move = @player.moves.find{|move| move.id = params[:move_attributes][:id]}
        
        if (@player.update(player_params))
            render json: { id: @player.id, name: @player.name, play_id: @player.play_id }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def player_params
        params.require(:player).permit(:id, :name, moves_attributes: [:id, :player_id, :startX, :startY, :endX, :endY, :order, :startDelay, :endDelay, :duration])
    end
end