Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pokemons, only: [:index, :show]
  # Watch out for several or nested routes
  resources :users, only: [:show, :index]

  get '/landing', to: 'pages#home', as: 'landing'
end
