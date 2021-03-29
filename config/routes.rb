Rails.application.routes.draw do

  devise_for :users
  devise_for :admins
  root 'categories#index'

  authenticate :admin do 
    resources :products
    resources :categories
  end
end
