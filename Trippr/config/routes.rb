Trippr::Application.routes.draw do
  
  devise_for :users
  root 'trips#index'
  

resources :trips do
    resources :notifications, only: [:create, :new]
  end
  
end
