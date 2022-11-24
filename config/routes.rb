Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  resources :goats, only: %i[index show create]
  get "users/:id/profile", to: "pages#profile", as: :user_profile
end
