Blogger::Application.routes.draw do

  devise_for :users
  root 'blogs#index'

  resources :blogs

end
