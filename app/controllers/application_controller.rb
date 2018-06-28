require 'rest-client'
require 'json'
require 'net/http'
require 'open-uri'
require 'byebug'

class ApplicationController < ActionController::API
### AUTH START
    
    def getSecret
        ENV['JWT_SECRET']
    end

    def getToken
        request.headers["Authorization"]
    end

    def getDecodedToken()
        begin
          decoded_token = JWT.decode getToken(), getSecret(), true, { algorithm: 'HS256' }
        rescue JWT::DecodeError
          return nil
        end
        decoded_token
    end
      
    def isAuthenticated?
        !!getDecodedToken()
    end

    def loginRequired
        if !isAuthenticated?()
            render json: {
              message: "User not authorized"
            }, status: :unauthorized
        end
    end

    def userMatch
        @user = User.find(params[:user_id])
        if @user.id != getDecodedToken()[0]["id"]
            render json: {
                message: "User not authorized"
            }, status: :unauthorized
        end
    end

### AUTH END
end