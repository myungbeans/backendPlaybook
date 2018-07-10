require 'byebug'

class Api::V1::PlaysController < ApplicationController
    before_action :loginRequired, only: [:create]

    def create
        @play = Play.new

        @play.user_id = params[:user_id]
        @play.title = params[:title]

        if (@play.save)
            render json: { id: @play.id, title: @play.title, user_id: @play.user_id }
        else
            render json: { errors: @play.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    def play_players
        @play = Play.find(params[:play_id])
        render json: @play.players
    end

    def destroy
        @play = Play.find(params[:id])
        @play.delete
    end
end
