Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  get 'home', to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "up" => "rails/health#show", as: :rails_health_check
end
