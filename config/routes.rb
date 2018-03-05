Rails.application.routes.draw do
  root to: 'welcome#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :users
  resources :characters
end
