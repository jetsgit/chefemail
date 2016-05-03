Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do 
      resources :emails, only: [:index]
    end
  end
  resources :emails
  root 'emails#index'
end
