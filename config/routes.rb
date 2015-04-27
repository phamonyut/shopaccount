Rails.application.routes.draw do
  
  devise_for :users
  
  root 'products#index'
  get 'products/test'
  resources :products do
    get 'increase'
    get 'decrease'
  end


end
