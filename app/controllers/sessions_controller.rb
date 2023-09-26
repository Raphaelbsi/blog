class SessionsController < ApplicationController
  before_action :authenticate, except: :create

  def create
    usuario = Usuario.find_by(email: params[:email])
    if usuario && usuario.authenticate(params[:password])
      token = AuthenticationService.generate_token(usuario)
      render json: { token: }
    else
      render json: { error: 'Credenciais inválidas' }, status: :unauthorized
    end
  end
end
