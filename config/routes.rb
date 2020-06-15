Rails.application.routes.draw do
  root 'users#show'
  devise_for :users
  resources :books
  resources :users, only:[:show, :index, :edit, :update]
  get 'homes/action1'
  get 'homes/action2'
end
