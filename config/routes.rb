Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products, only: [:new, :create, :show]
  resources :users, only: [:new, :create]
  resources :category, controller: :categories, only: [:index, :show]
end
