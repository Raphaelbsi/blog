require 'rails_helper'

RSpec.describe Usuario, type: :model do
  it 'é válido com nome, email e senha' do
    usuario = FactoryBot.build(:usuario)
    expect(usuario).to be_valid
  end

  it 'não é válido sem nome' do
    usuario = Usuario.new(
      email: 'usuario@example.com',
      password: 'password'
    )
    expect(usuario).not_to be_valid
  end
end
