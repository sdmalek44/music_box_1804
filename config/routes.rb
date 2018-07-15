Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/songs', to: 'songs#index'
  root "welcome#index"
  resources :users, only: [:new, :create, :show]
  resources :artists, shallow: true do
    resources :songs, except: [:index]
  end
  resources :songs, only: [:index]
  resources :playlists
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  namespace :admin do
    resources :categories, only: [:index]
  end
  resources :categories, only: [:index]
end
