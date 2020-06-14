Rails.application.routes.draw do
  root 'todolists#index'
  devise_for :users
  resources :books
  resources :users,only:[:show, :index, :edit, :update]
  get 'todolists/show'
end
