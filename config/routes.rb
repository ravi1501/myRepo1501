Rails.application.routes.draw do
  
  get 'destroy_session/index'

  get 'appuser/index'

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
  # Show Edit Page
  get "ruchi/editm"
  #Login View
  post "ruchi/login"
  #Destroy User Session
  get "appuser/destroy"

  get "appuser/logout"
 
end
