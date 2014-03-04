MovieApp2::Application.routes.draw do
 
  root 'movies#index'

  resources :movies

  get 'movies/search', to: "movies#search"

end
