Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :emails, only: [:index]
    end
  end
  resources :emails
  root 'emails#index'
end
