Rails.application.routes.draw do
  resources :memes
  resources :searches
  root 'searches#index'
end