Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :bikes do
    resources :reservations, only: [:index, :new, :create]
  end
  resources :reservations, only: [:show, :update, :edit, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
