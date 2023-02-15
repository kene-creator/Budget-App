# frozen_string_literal: true

Rails.application.routes.draw do
  root 'splash_screen#index'
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :groups do
    resources :entities
  end

  resources :entities, only: %i[index new create destroy]
  resources :groups, only: %i[index new create destroy]
  # root 'entities#index'
end
