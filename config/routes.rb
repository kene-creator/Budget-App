# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'entities/index'
  get 'entities/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :entities, only: %i[index new create destroy]
  root 'entities#index'
end
