class Comentario < ApplicationRecord
  belongs_to :post
  validates :nome, presence: true
  validates :comentario, presence: true
end
