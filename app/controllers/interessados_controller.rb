class InteressadosController < ApplicationController

  def create
    interessado = Interessado.new(interessado_params)
    if interessado.save
      render nothing: true, status: 201
    else
      render nothing: true, status: 400
    end
  end

  private

  def interessado_params
    params.require(:interessado).permit(:email)
  end

end
