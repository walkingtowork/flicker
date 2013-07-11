Flicker::Application.routes.draw do
  # Index
  get "home/index" => "home#index", :as => "home"

  resources :albums do
    resources :photos
  end
  # resources :albums
  # resources :photos

  root :to => "home#index"

  # Albums
  # get "albums/index" => "albums#index", :as => "albums"

  # get "albums/new" => "albums#new", :as => "new_album"
  # post "albums/create"

  # get "albums/edit/:id" => "albums#edit", :as => "edit_album"
  # put "albums/update/:id" => "albums#update"
  # delete "albums/destroy"

  # get "albums/:id" => "albums#show"

  # Photos

  # get "photos/new" => "photos#new", :as => "new_photo"
  # post "photos/create"

  # get "photos/edit/:id" => "photos#edit", :as => "edit_photo"
  # put "photos/update/:id" => "photos#update"
  # delete "photos/destroy"

  # get "photos/:id" => "photos#show", :as => "photos"
end
