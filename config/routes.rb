Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :plays, only: [:index, :create]
      resources :players, only: [:create]
      get '/users/:user_id/plays/', to: 'users#user_plays'
      post '/sessions/', to: 'sessions#create'
    end
  end
end
