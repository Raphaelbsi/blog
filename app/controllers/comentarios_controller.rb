class ComentariosController < ApplicationController
  before_action :authenticate
  before_action :set_comentario, only: %i[show edit update destroy]

  def index
    @comentarios = Comentario.all
    render json: @comentarios
  end

  def show
    render json: @comentario
  end

  def create
    @comentario = Comentario.new(comentario_params)

    if @comentario.save
      render json: @comentario, status: :created
    else
      render json: @comentario.errors, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @comentario.update(comentario_params)
      render json: @comentario
    else
      render json: @comentario.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comentario.destroy
    head :no_content
  end

  private

  def set_comentario
    @comentario = Comentario.find(params[:id])
  end

  def comentario_params
    params.require(:comentario).permit(:nome, :comentario, :post_id)
  end
end
