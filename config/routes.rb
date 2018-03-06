Rails.application.routes.draw do
  root 'welcome#welcome'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users
  resources :characters

  get  '/round1' => 'games#round1'
  resources :games, only: [:index, :new, :create, :show]





end
