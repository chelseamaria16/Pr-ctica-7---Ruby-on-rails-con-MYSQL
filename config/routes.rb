Rails.application.routes.draw do
  resources :estus
  root 'users#index'

  resources :users
  
end
