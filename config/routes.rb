Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  resources :usuarios
  resources :posts, defaults: { format: :json }
  resources :comentarios, defaults: { format: :json }
end
