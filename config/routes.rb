Rails.application.routes.draw do

  get 'authors', to: 'authors#index', as: 'authors'
  get 'authors/:id', to: 'authors#show', as: 'author'

  get 'pages/home', to: 'pages#home', as: 'pages_home'
  get 'sdflming', to: 'pages#sdflming', as: 'pages_sdflming'
  get 'bob', to: 'pages#bob', as: 'pages_bob'
  get 'alice', to: 'pages#alice', as: 'pages_alice'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
