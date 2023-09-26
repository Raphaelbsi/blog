FactoryBot.define do
  factory :post do
    titulo { 'Título do Post' }
    texto { 'Texto do Post' }
    association :usuario, factory: :usuario
  end
end
