Rails.application.routes.draw do
  root 'welcome#welcome'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users
  resources :games
  resources :characters
  resources :battles

  get  '/round1/:id' => 'games#round1'
  post '/round1/:id' => 'games#create_round'


end
