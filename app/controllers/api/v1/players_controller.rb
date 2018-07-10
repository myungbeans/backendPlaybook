require 'byebug'

class Api::V1::PlayersController < ApplicationController
    def create
        @player = Player.new({
            play_id: params[:player][:play_id], name: params[:player][:name],
            moves_attributes: [{
                startX: params[:player][:moves_attributes][0][:startX], 
                startY: params[:player][:moves_attributes][0][:startY], 
                endX: params[:player][:moves_attributes][0][:endX], 
                endY: params[:player][:moves_attributes][0][:endY], 
                startDelay: params[:player][:moves_attributes][0][:startDelay], 
                endDelay: params[:player][:moves_attributes][0][:endDelay], 
                duration: params[:player][:moves_attributes][0][:duration],
                order: params[:player][:moves_attributes][0][:order],
            }]
        })

        if (@player.save)
            render json: { id: @player.id, name: @player.name, play_id: @player.play_id, moves: @player.moves }
        else
            render json: { errors: @player.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        @player = Player.find(params[:id])
        
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