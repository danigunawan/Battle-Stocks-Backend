Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stocks
      resources :users
      post '/login', to: 'auth#create'
        resources :portfoliostocks
        resources :deadstocks
          end
        end
      end
