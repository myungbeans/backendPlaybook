class Api::V1::MovesetsController < ApplicationController
    def create
        @moveset = Moveset.new

        @moveset.play_id = params[:play_id]
        @moveset.name = params[:name]
        @moveset.sequence = @moveset.player.movesets.indexOf(@moveset)
        # sequence determined by the order it comes in the total number of movesets in a play for a particular player

        if (@moveset.save)
            payload = { id: @moveset.id, name: @moveset.name, player_id: @moveset.player_id }
            # token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'
            render json: { id: @moveset.id, name: @moveset.name, player_id: @moveset.player_id }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end
end
