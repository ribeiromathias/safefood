Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'pages#home'
  get '/search', to: 'pages#search'

  resources :restaurants, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 1 - I want a page with the list of all the products,
  # with buttons so that the user can add to cart
  # meals/meal_id/order_item

  resources :meals do
    resources :reviews, only: [:new, :create ]
    resources :order_items, only: [:create]

    collection do
      get '/owned', to: 'meals#owned'
    end
  end

  resources :reviews, only: [:destroy]

  resources :order_items, only: [:destroy]
  # 2 - When the user clicks on add to cart, I want to
  # create a order_item and and a list of orders and update the status
  # yet
  resources :orders, only: [:show, :index, :update]
  resources :seller_orders, only: [:show, :index, :update]
  resources :delivery_schedules, only: [:index, :new, :create, :destroy]


end
