Rails.application.routes.draw do
  
  root to: "nexts#index"

  resources :nexts
  
end
