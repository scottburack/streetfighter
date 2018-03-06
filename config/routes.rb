Rails.application.routes.draw do


  root to: 'welcome#welcome'

  resources :users
  resources :characters
  resources :games, only: [:index, :new, :create, :show]

  get  '/round1' => 'games#round1'


end
