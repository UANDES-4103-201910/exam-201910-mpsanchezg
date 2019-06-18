Rails.application.routes.draw do
  get 'home/index'
  resources :order_billing_addresses
  resources :order_shipping_addresses
  resources :order_products
  resources :orders
  resources :addresses
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
