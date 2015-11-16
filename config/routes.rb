Rails.application.routes.draw do
  
  mount_devise_token_auth_for 'User', at: 'auth'
    
  # devise_for :users
  resources :idea_components
  resources :ideas
  resources :repositories 
  resources :users
  
  root to: "home#index"
  
  
  
end
