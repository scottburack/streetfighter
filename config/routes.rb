Rails.application.routes.draw do
<<<<<<< HEAD

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
  resources :users
  resources :characters

  root to: 'welcome#welcome'
=======
  root to: 'welcome#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :users
  resources :characters
>>>>>>> refs/remotes/origin/master
end
