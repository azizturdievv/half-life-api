Rails.application.routes.draw do
  resources :half_lives
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  api_guard_routes for: 'users'
  # Defines the root path route ("/")
  # root "articles#index"
end
