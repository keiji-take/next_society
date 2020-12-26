Rails.application.routes.draw do
  devise_for :companies
  devise_for :users
  root to: "nexts#index"

  resources :nexts do
    collection do
      get 'user_selector'
    end
  end
  resources :users, only: [:show, :edit, :update]
  
end
