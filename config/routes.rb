Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :portfoliostocks
    end

    post '/login', to: 'auth#create'
    resources :portfolios
    resources :portfoliostocks
    resources :stocks
    resources :users


          end
        end

        namespace :api do
          namespace :v1 do
            resources :users do
              resources :stocks
            end
          end
        end

        namespace :api do
          namespace :v1 do
            resources :users do
              resources :portfolios
            end
          end
        end

      end
