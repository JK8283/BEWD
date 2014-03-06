MovieApp2::Application.routes.draw do
 
  root 'movies#index'

  resources :movies

  get 'movies/search', to: "movies#search"

  get '/movies' => 'movies#index'
  get '/movies/new' => 'movies#new'
  post '/movies' => 'movies#create'

  get '/movies/:id/edit' => 'movies#edit'
  put '/movies/:id' => 'movies#update'


end
