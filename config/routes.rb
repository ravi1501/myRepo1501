Rails.application.routes.draw do
  root 'my_home#index'
  #Show Login Page
  get 'ruchi/showLogin'

  #Show New Sign UP page
  get 'ruchi/signup'
  

  get 'article/index'

  resources :users
  #get 'ruchi/index'
  get "ruchi/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "ruchi/register"
  get "ruchi/ViewUser"
  # Ajax Call 
  post "ruchi/JsonTest"
  get "ruchi/editm"

end
