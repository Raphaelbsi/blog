class UsuariosController < ApplicationController
  before_action :set_usuario, only: %i[show update destroy]
  before_action :authenticate, only: %i[update destroy]

  def index
    @usuarios = Usuario.all
    render json: @usuarios
  end

  def show
    render json: @usuario
  end

  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario, status: :created, location: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @usuario.destroy
  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:nome, :email, :senha)
  end
end
