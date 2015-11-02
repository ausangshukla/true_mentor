Rails.application.routes.draw do
  devise_for :users
  resources :idea_components
  resources :ideas
  resources :repositories
  resources :users
  
  root to: "home#index"
  
end
