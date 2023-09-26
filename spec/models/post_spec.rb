require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'é válido com um título e texto' do
    post = FactoryBot.build(:post)
    expect(post).to be_valid
  end

  it 'é inválido sem um título' do
    post = FactoryBot.build(:post, titulo: nil)
    expect(post).to_not be_valid
  end

  it 'é inválido sem texto' do
    post = FactoryBot.build(:post, texto: nil)
    expect(post).to_not be_valid
  end

  it 'pertence a um usuário' do
    assoc = described_class.reflect_on_association(:usuario)
    expect(assoc.macro).to eq :belongs_to
  end
end
