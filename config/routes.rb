Rails.application.routes.draw do
  
  root 'products#index'
  resources :products do
    get 'increase'
    get 'decrease'
  end


end
