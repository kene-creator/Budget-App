Rails.application.routes.draw do
  devise_for :users
  get 'entities/index'
  get 'entities/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :entities, only: [:index, :new, :create, :destroy]
  root "entities#index"
end
