Rails.application.routes.draw do
  

  

  resources :uploders,only: [:show]

  resources :albums do
  	resources :pics , except: [:show,:index]
  end	
  devise_for :users

  root to: "welcome#home"


end
