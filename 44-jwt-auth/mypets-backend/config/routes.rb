Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets, only: [:index]
  resources :users, only: [:index, :create]

  resources :sessions, only: [:create]
  post '/signup', to: 'users#create'
end
