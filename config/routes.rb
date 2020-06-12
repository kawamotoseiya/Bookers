Rails.application.routes.draw do
  root 'books#index'
  devise_for :users
  resource :books
  resources :users,only:[:show, :index, :edit, :update]
end
