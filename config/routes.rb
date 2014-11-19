Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
  resources :notes

  root 'home#index'
end
