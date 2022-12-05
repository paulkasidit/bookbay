Rails.application.routes.draw do
  devise_for :users 

  root to: 'books#index'

  post 'books/add_to_cart/:id', to: 'books#add_to_cart', as: 'add_to_cart'
  delete 'books/remove_from_cart/:id', to: 'books#remove_from_cart', as: 'remove_from_cart' 
  post 'books/checkout_cart', to: 'books#checkout_cart', as: 'checkout_cart'

  resources :books do 
    resources :reviews
  end
  
end
