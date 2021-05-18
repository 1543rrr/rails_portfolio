Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts, except: [:index] do
  resources :posts
  # resources :commentss, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
  resources :comments, only: :create
  end
  resources :users, only: :show
  
end
