Rails.application.routes.draw do
  get "about", to: "about#index"

  get "hotels", to: "hotels#index"
  get "cities", to: "cities#index"
  resources :french_cities, only: [:index, :show]

  root to: "main#index"
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
