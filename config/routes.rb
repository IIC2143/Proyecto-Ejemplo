Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'index', to: 'pokemon#index'
  get 'pokemon/id', to: 'pokemon#show'
  post 'pokemon', to: 'pokemon#create'
  get 'name', to: 'pokemon#sayMyName'
end
