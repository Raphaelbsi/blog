Rails.application.routes.draw do
  post '/login', to: 'sessions#create' # Rota de login
  resources :usuarios, except: %i[create update destroy] # Rotas de CRUD de usuário
  resources :posts # Rotas de CRUD de post
  resources :comentarios # Rotas de CRUD de comentário
end
