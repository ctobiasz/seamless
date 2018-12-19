Rails.application.routes.draw do
  get 'items/new'
  get 'items/edit'
  get 'items/show'
  get 'items/index'
  get 'owners/new'
  get 'owners/edit'
  get 'owners/show'
  get 'owners/index'
  root 'pages#home'

  resources :users
  resources :restaurants
  resources :owners

  get "/register-owner", to: 'owners#new'
  get "/signup", to: 'users#new'

  get "/faq", to: 'pages#faq'
  get "/about", to: 'pages#about'

end
