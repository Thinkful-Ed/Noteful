Rails.application.routes.draw do

  devise_for :users
  resources :notes

  root 'home#index'
end
