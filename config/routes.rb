Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"

  resources :bikes do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, except: %i[new create destroy]
end
