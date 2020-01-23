Rails.application.routes.draw do
  
  root to: 'users#index'  
  # root to: "devise/registrations#new"
  # devise_for :users
  devise_for :users
  resources :users, only: [:index, :show]
  resources :posts
  resources :comments#, only: [:create, :show]
  resources :likes

  post '/cancelfriend', to: 'friendships#cancel', as: 'cancelfriend'
  post '/acceptfriend', to: 'friendships#create'
  # post 'friendships', to: 'friendships#cancel_request'
  # post 'friendships', to: 'friendships#create'
  resources :friendships, only: [:index, :show, :update]
  get 'friends', to: 'users#friends'
  # post 'friendships', to: 'friendships#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
