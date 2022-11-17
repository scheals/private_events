Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :new, :create]
  # Defines the root path route ("/")
  root "events#index"
end
