Rails.application.routes.draw do

  root 'welcome#welcome'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users
  resources :characters
  resources :games, only: [:index, :new, :create, :show]

  get  '/round1/:id' => 'games#round1'


end
