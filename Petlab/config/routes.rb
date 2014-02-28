Petlab::Application.routes.draw do
  
  root 'pets#index'

  resources :pets

end
