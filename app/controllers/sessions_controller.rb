class SessionsController < ApplicationController
  if autenticado
    token = AuthenticationService.generate_token(@usuario)
    render json: { token: }
  else
    render json: { error: 'Credenciais inválidas' }, status: :unauthorized
  end
end
