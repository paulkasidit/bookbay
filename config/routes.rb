Rails.application.routes.draw do
  resources :cart_items
  devise_for :users

  root to: 'books#index'
  resources :books do 
    resources :reviews
  end
  
end
