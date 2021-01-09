Rails.application.routes.draw do
  devise_for :companies, controllers:{
    registrations: 'companies/registrations',
    sessions: 'companies/sessions',
    passwords: 'companies/passwords'
  }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
  
  root to: "nexts#index"

  resources :nexts do
    collection do
      get 'user_selector'
    end
  end
  resources :users, only: [:show, :edit, :update]
  resources :companies
end
