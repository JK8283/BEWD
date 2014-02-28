ShirtManagement::Application.routes.draw do
  
    root to: 'shirts#index'
    resources :shirts

  end
