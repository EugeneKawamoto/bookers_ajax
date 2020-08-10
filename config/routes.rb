Rails.application.routes.draw do
  resources :books
  # get 'users/show'
  devise_for :users
  root 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit]
end
