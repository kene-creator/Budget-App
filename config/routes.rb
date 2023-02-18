Rails.application.routes.draw do
  root 'splash_screen#index'
  devise_for :users

  resources :groups do
    resources :entities
  end

  resources :entities, only: %i[index new create destroy]
  resources :groups, only: %i[index new create destroy]

  get 'confirm_email/:token', to: 'users#confirm_email', as: 'confirm_email'
end
