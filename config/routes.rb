Rails.application.routes.draw do

  resources :books
  get 'authors', to: 'authors#index', as: 'authors'
  get 'authors/new', to: 'authors#new', as: 'new_author'
  post 'authors', to: 'authors#create'
  get 'authors/:id', to: 'authors#show', as: 'author'
  get 'authors/:id/edit', to: 'authors#edit', as: 'edit_author'
  put 'authors/:id', to: 'authors#update'
  patch 'authors/:id', to: 'authors#update'
  delete 'authors/:id', to: 'authors#destroy'

  get 'pages/home', to: 'pages#home', as: 'pages_home'
  get 'sdflming', to: 'pages#sdflming', as: 'pages_sdflming'
  get 'bob', to: 'pages#bob', as: 'pages_bob'
  get 'alice', to: 'pages#alice', as: 'pages_alice'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
