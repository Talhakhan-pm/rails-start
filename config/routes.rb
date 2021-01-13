Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  resources :cars
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end