Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.

root to: 'static#homepage'

end
