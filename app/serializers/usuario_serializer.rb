class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :nome, :email, :created_at, :updated_at

  def attributes(*args)
    hash = super
    hash.delete(:password)
    hash.delete(:created_at)
    hash.delete(:updated_at)
    hash
  end
end
