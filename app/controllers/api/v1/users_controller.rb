class Api::V1::UsersController < ApplicationController
    before_action :loginRequired, only: [:index]
    before_action :requiresUserMatch, only: [:user_plays]

    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new

        @user.email = params[:email]
        @user.username = params[:username]
        @user.password = params[:password]

        if (@user.save)
            payload = { username: @user.username, id: @user.id }
            token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'
            render json: { token: token, id: @user.id }
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def user_plays
        @user = User.find(params[:user_id])
        render json: @user.plays
    end

    private
    def user_params
    # params.require(:user).permit(:username, :password, :password_confirmation)
    end
end