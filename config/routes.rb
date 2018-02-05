Rails.application.routes.draw do

  get 'pages/home', to: 'pages#home', as: 'pages_home'
  get 'sdflming', to: 'pages#sdflming', as: 'pages_sdflming'
  get 'alice', to: 'pages#alice', as: 'pages_alice'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
