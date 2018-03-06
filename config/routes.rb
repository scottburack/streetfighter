Rails.application.routes.draw do
  root 'welcome#welcome'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get  '/round1/:id' => 'games#round1'

  resources :users
  resources :games
  resources :characters
  resources :battles



end
