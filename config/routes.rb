Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get '/welcome/(:name)', to: 'pages#welcome', as: 'welcome'
  get '/team', to: 'pages#team', as: 'team'
  get '/contact', to: 'pages#contact', as: 'contact'
   get '/home', to: 'pages#home'
  resources :gossips
  resources :users
  resources :sessions
end
