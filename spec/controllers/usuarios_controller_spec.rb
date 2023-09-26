require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do
  describe 'GET #index' do
    it 'retorna status HTTP 200 (OK)' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
