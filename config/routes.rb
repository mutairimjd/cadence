Rails.application.routes.draw do
  
  get "songs/user/favorites", to:"songs#user_fav_songs", as: "user_fav_songs"
  get "songs/user/", to:"songs#user_songs", as: "user_songs"
  devise_for :users
  resources :songs
  # root 'songs#index'
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "landing"
  resources :songs do
    resources :comments
  resources :songs do 
    resources :likes

  end



  get "songs/catogrie/:catogrie_id", to:"songs#index", as: "catogrie"

  get "songs/catogrie/:catogrie_id", to:"songs#catogrie_songs", as: "catogrie"
  

  root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
