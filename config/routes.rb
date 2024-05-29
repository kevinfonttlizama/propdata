Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'home#index'

  get 'home', to: 'home#index'
  get 'dashboard', to: 'dashboard#index'

  get "up" => "rails/health#show", as: :rails_health_check

  resources :properties, only: [:show, :new, :create, :edit, :update, :destroy]
end
