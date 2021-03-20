Rails.application.routes.draw do
  root 'work#index'

  match 'work', to: 'work#index', via: 'get'
  match 'choose_theme', to: 'work#choose_theme', via: :get
  match 'display_theme', to: 'work#display_theme', via: :post

  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'

  resources :themes
  resources :images
  resources :values
  resources :users
end
