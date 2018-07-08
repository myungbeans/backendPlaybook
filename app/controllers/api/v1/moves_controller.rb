class Api::V1::MovesController < ApplicationController
    def create
    end

    def update
        @move = Move.find(params[:id])
        @move.startX = params[:startX]
        @move.startY = params[:startY]
        @move.endX = params[:endX]
        @move.endY = params[:endY]
        if (@move.save)
            render json: { 
                id: @move.id,
                order: @move.order,
                startX: @move.startX,
                startY: @move.startY,
                endX: @move.endX,
                endY: @move.endY,
                startDelay: @move.startDelay,
                endDelay: @move.endDelay,
                duration: @move.duration,
                player_id: @move.player_id,
            }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def updateFromPlayers(move, startX, startY)
        move.startX = startX
        move.startY = startY
        if (move.save)
            render json: { 
                id: move.id,
                order: move.order,
                startX: move.startX,
                startY: move.startY,
                endX: move.endX,
                endY: move.endY,
                startDelay: move.startDelay,
                endDelay: move.endDelay,
                duration: move.duration,
                player_id: move.player_id,
            }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    #DESTROY, EDIT
end
