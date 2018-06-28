class Api::V1::PlayController < ApplicationController
    before_action :loginRequired, only: [:index]

    
end
