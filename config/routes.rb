Rails.application.routes.draw do
  resources :emails
  root 'home#index'
end
