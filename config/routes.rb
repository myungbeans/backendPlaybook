Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :plays, only: [:index, :create, :destroy]
      resources :players, only: [:create, :update, :destroy]
      resources :moves, only: [:update]

      get '/users/:user_id/plays/', to: 'users#user_plays'
      get '/plays/:play_id/players', to: 'plays#play_players'
      get '/players/:player_id/moves', to: 'players#player_moves'
      post '/players/:player_id/moves/', to: 'moves#create'
      post '/sessions/', to: 'sessions#create'
    end
  end
end
