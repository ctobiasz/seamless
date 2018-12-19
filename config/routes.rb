Rails.application.routes.draw do

  root 'pages#home'

  resources :users
  resources :restaurants
  resources :owners
  resources :items

  get "/register-owner", to: 'owners#new'
  get "/new-item", to: 'items#new'
  get "/signup", to: 'users#new'

  get "/faq", to: 'pages#faq'
  get "/about", to: 'pages#about'

end
