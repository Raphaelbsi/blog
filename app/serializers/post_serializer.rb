class PostSerializer < ActiveModel::Serializer
  attributes :id, :titulo, :texto, :created_at, :updated_at

  belongs_to :usuario
end
