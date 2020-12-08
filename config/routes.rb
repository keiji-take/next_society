Rails.application.routes.draw do
  devise_for :users
  root to: "nexts#index"

  resources :nexts
  resources :users, only: [:show, :edit]
  
end
