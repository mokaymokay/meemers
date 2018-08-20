Rails.application.routes.draw do
  resources :faves, only: [:index, :create, :edit], controller: 'memes'
  resources :results, only: [:index, :create], controller: 'searches'
  root 'searches#index'
end