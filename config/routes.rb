Rails.application.routes.draw do
  resources :quotes
  devise_for :users
end
