Rails.application.routes.draw do
  root 'pages#home'
  resources :users

  get "/signup", to: 'users#new'
  get "/faq", to: 'pages#faq'
  get "/about", to: 'pages#about'
end
