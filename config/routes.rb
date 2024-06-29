Rails.application.routes.draw do
  root 'pages#home'
  get 'home', to: 'pages#home'

  resources :killteams, only: [:index, :show]
end
