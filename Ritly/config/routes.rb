Ritly::Application.routes.draw do

  devise_for :users
  root "rits#index"
  resources :rits #TODO: restrict this to just :create, :new and :show

  get '/:rits' => 'rits#redirector'
  get '/:rits/preview' => 'rits#show'

end
