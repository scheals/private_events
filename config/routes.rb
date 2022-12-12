Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :event_invites, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  # Defines the root path route ("/")
  root "events#index"
end
