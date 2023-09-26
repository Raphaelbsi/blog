Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  resources :usuarios
  resources :posts
  resources :comentarios
end
