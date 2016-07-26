Rails.application.routes.draw do
  root 'pages#home'
  resources :projects, only: [:index]
  resources :admin
  resources :music 
  resources :sports
  resources :movies
  resources :pages do
    collection do
      get 'contact'
    end
  end
  resources :messages, only: [:new, :create]
end
