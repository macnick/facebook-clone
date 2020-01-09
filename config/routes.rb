Rails.application.routes.draw do
  
  root to: 'users#index'  
  # root to: "devise/registrations#new"
  # devise_for :users
  devise_for :users
  resources :users, only: [:index, :show]
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
