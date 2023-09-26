require 'rails_helper'

RSpec.describe Comentario, type: :model do
  it 'é válido com um nome e comentário' do
    comentario = FactoryBot.build(:comentario)
    expect(comentario).to be_valid
  end

  it 'é inválido sem um nome' do
    comentario = FactoryBot.build(:comentario, nome: nil)
    expect(comentario).to_not be_valid
  end

  it 'é inválido sem um comentário' do
    comentario = FactoryBot.build(:comentario, comentario: nil)
    expect(comentario).to_not be_valid
  end

  it 'pertence a um post' do
    assoc = described_class.reflect_on_association(:post)
    expect(assoc.macro).to eq :belongs_to
  end
end
