Rails.application.routes.draw do

  devise_for :admins
  root 'categories#index'

  autenticate :admin do 
    resources :products
    resources :categories
  end
end
