Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'    
      resources :users, only: [:create, :index]
      resources :stocks
      resources :games
      resources :stockgames
          end
        end
      end
