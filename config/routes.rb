Rails.application.routes.draw do
  get 'meals/new'
  get 'meals/index'
  get 'meals/show'
  get 'meals/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :meals, only: [ :new, :create, :index, :show, :edit, :update, :destroy]
end
