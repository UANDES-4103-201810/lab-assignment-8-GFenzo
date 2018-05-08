Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  match '/users/admin',   to: 'users#admin',   via:  'get',  as: 'admin'

  resources :products
  resources :users do
    resources :products
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
