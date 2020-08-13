Rails.application.routes.draw do
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create index show]
  resources :opinions, only: %i[new create]
  resources :sessions, only: %i[new create destroy]
  resources :followings, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
end
