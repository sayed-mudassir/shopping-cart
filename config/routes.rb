Rails.application.routes.draw do
  resources :bs
  resources :buys
  resources :buynows
  get 'cards/show'
  resources :shops, only:[:index , :show]
  resources :cards, only:[:show]
  resources :order_items
  resources :products
  root to: "shops#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
