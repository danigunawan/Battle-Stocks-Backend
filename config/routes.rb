Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
    resources :portfoliostocks
    resources :users
      post '/login', to: 'auth#create'
    resources :stocks
          end
        end
      end
