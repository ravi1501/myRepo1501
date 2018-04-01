Rails.application.routes.draw do
  get 'article/index'

  resources :users
  #get 'ruchi/index'
  root "ruchi#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "ruchi/register"
  get "ruchi/ViewUser"
  # Ajax Call 
  post "ruchi/JsonTest"
  get "ruchi/editm"

end
