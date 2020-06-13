Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users,only:[:show, :index, :edit, :update]
end