Rails.application.routes.draw do
  resources :categories
  resources :users
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  root "welcome#index"

  get '/about', to: 'welcome#about'

end
