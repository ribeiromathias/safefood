Rails.application.routes.draw do
  get 'orders/show'
  get 'orders/index'
  get 'meals/new'
  get 'meals/index'
  get 'meals/show'
  get 'meals/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 1 - I want a page with the list of all the products,
  # with buttons so that the user can add to cart
  resources :meals do 
    resources :order_items, only: [:create]
  end

  resources :order_items, only: [:destroy]
  # 2 - When the user clicks on add to cart, I want to
  # create a order_item and and a list of orders and update the status
  # yet
  resources :orders, only: [:show, :index, :update]
end
