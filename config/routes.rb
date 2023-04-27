Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   
  post '/login', to: 'authentication#login'
  post '/signup', to: 'users#create'
  # Defines the root path route ("/")
  root "shoes#index"
  get "reservation", to: "reservations#index"
  resources :users, param: :_username
  resources :shoes do 
  resources :reservations
  end
end
