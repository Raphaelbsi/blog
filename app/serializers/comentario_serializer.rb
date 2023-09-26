class ComentarioSerializer < ActiveModel::Serializer
  attributes :id, :nome, :comentario, :created_at, :updated_at

  belongs_to :post
end
