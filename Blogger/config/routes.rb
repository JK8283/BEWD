Blogger::Application.routes.draw do

  root 'blogs#index'

  resources :blogs
  
  get '/blogs/new' => 'blogs#new'
  post '/blogs' => 'blogs#create'
end
