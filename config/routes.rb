Rails.application.routes.draw do
  devise_for :users
  resources :news
  get 'home/index'

get "news/user/:user_id", to:  "news#from_author"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
