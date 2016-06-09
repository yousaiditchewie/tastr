Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes
  resources :users, only: [:new, :create, :edit, :update]
  get '/users/:id/recipes', to: 'users#recipes', as: 'user_recipes'
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
end
