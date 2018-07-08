require 'byebug'

class Api::V1::PlaysController < ApplicationController
    before_action :loginRequired, only: [:create]

    def create
        @play = Play.new

        @play.user_id = params[:user_id]
        @play.title = params[:title]

        if (@play.save)
            payload = { id: @play.id, title: @play.title, user_id: @play.user_id }
            render json: { id: @play.id, title: @play.title, user_id: @play.user_id }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    def play_players
        @play = Play.find(params[:play_id])
        render json: @play.players
    end
end
