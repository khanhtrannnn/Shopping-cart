Rails.application.routes.draw do

  get 'list/show/:id', to: 'list#show'

  post 'list/add/:id', to: 'list#add'

  get 'cart/show'

  get 'cart/delete/:id', to: 'cart#delete'

  get 'cart/cart_process/:id', to: 'cart#cart_process'

  get 'cart/buy_success', to: 'cart#buy_success'

  resources :products

  get 'main/main_page'

  get 'main/show_products'

  get 'main/search', to:'main#search'

  get 'main/cart'

  get 'session/login'

  post 'session/login_process'

  get 'session/logout'

  resources :product_types

  resources :product_types do
    resources :products
  end

  root 'main#main_page'
end

