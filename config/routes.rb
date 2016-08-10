Rails.application.routes.draw do
  resources :my_numbers
  resources :products
  resources :blogs
  devise_for :users
  root 'top#index'

  resources :blogs
  resources :products
  resources :my_numbers
end
