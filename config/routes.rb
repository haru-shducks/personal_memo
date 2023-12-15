Rails.application.routes.draw do
  
  # user
  devise_for :users
  
  # home
  root 'homes#top'
  get 'homes/about'
  
  # genre
  resources :genres, only: [:new, :create, :show, :edit, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
