# frozen_string_literal: true

class AuthenticationService
  SECRET_KEY = '123adm'

  def self.generate_token(usuario)
    payload = { usuario_id: usuario.id }
    JWT.encode(payload, SECRET_KEY, 'HS256')
  end

  def self.decode_token(token)
    JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')[0]
  end
end
