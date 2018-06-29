class Api::V1::PlayController < ApplicationController
    before_action :loginRequired, only: [:create]

    def create
        @play = Play.new

        @play.user_id = params[:user_id]
        @play.title = params[:title]

        if (@play.save)
            payload = { id: @play.id, title: @play.title, user_id: @play.user_id }
            # token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'
            render json: { id: @play.id, title: @play.title, user_id: @play.user_id }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end
end
