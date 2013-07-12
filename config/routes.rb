Flicker::Application.routes.draw do
  #Stripe
  resources :charges

  #Sorcery Authentication
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  get "secret" => "home#secret", :as => "secret" #Irrelevant?

  # Index
  get "home/index" => "home#index", :as => "home"

  # Albums, Photos
  resources :albums do
    resources :photos
  end

  root :to => "home#index"
end