Rails.application.routes.draw do
  
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
  root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
