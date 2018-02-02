Rails.application.routes.draw do

  get 'pages/home', to: 'pages#home', as: 'pages_home'
  get 'sdflming', to: 'pages#sdflming', as: 'pages_sdflming'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end