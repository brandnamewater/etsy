Rails.application.routes.draw do
  resources :orders

  devise_for :users

  resources :listings do
    resources :orders
  end

  resources :charges

  get 'pages/about'
  get 'pages/contact'
  get 'seller' => 'listings#seller'
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"


  root 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
