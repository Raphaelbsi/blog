class ApplicationController < ActionController::API
  before_action :authenticate

  private

  def authenticate
    token = request.headers['Authorization']
    return render json: { error: 'Token inválido' }, status: :unauthorized unless token

    begin
      payload = AuthenticationService.decode_token(token)
      @current_usuario = Usuario.find(payload['usuario_id'])
    rescue JWT::DecodeError
      render json: { error: 'Falha na autenticação' }, status: :unauthorized
    end
  end
end
