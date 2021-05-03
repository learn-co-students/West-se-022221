Rails.application.routes.draw do
  resources :ingredients
  resources :users
  resources :recipes, only: [:index, :new, :create]
  get '/search', to: 'recipes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
