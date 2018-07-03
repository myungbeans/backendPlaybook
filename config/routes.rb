Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :plays, only: [:index, :create]
      resources :players, only: [:create]
      get '/users/:user_id/plays/', to: 'users#user_plays'
      get '/plays/:play_id/players', to: 'plays#play_players'
      post '/sessions/', to: 'sessions#create'
    end
  end
end
