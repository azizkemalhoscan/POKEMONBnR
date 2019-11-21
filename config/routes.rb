Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pokemons, only: [:index, :show] 
  	
  # Watch out for several or nested routes
  resources :users, only: [:show, :index] do
  	resources :user_pokemons, only: [:new, :create, :destroy]
  end

  resources :battles, only: [:new, :create, :show]

  get '/landing', to: 'pages#home', as: 'landing'
end


# Rails.application.routes.draw do
#   devise_for :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :pokemons, only: [:index, :show] do
#     resources :user_pokemons, only: [:new, :create]
#   end    
#   # Watch out for several or nested routes

#   get '/landing', to: 'pages#home', as: 'landing'
#   root to: 'pages#profile'
# end
