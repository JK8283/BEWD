SuggestionBox::Application.routes.draw do
  
  root 'suggestions#index'

  resources :suggestions
  
end
