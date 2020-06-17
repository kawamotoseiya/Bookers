Rails.application.routes.draw do
  get 'home/about'
  root 'top#index'
  devise_for :users
  resources :books
  resources :users, only:[:show, :index, :edit, :update]
end
