Rails.application.routes.draw do
  root to: 'characters#home'
  resources :characters
  resources :items
  resources :enemies
  resources :locations
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
