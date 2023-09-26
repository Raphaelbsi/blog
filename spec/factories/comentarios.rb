FactoryBot.define do
  factory :comentario do
    nome { 'Nome do Comentário' }
    comentario { 'Texto do Comentário' }
    association :post, factory: :post
  end
end
