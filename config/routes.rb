Rails.application.routes.draw do
  get 'register/index'
  root "sessions#new"

  get '/login', to: "login#index"
  get 'register', to: "register#index"
  post 'users', to: "register#create"
  delete "logout", to: "sessions#destroy"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "sign_out", to: "sessions#destroy", as: 'log_out'

  get "character", to: "character#index"
  post "character", to: "character#create"
  get "character/:id", to: "character#destroy"
  get "character", to: "character#show"
  get "character/:id/edit", to: "character#edit", as: 'edit_character'
  patch "character/:id", to: "character#update", as: 'update_character'
  
  post "history", to: "character#create"
  get "item", to: "character#create"



  resources :users, :characters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
