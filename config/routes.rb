Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "shoes#index"
  get "reservation", to: "reservations#index"
  resources :users
  resources :shoes do 
  resources :reservations
  end
end
