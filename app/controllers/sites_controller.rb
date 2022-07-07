class SitesController < ApplicationController
  before_action :authenticate_empresa!, only: [:postular]

  def index
    @licitaciones = Licitacion.all
  end

  def licitacion
    @licitacion = Licitacion.find(params[:id])
    @postulacion = Postulacion.new 
  end

  def postular 
    @licitacion = Licitacion.find(params[:id])
    @postulacion = Postulacion.new(empresa_id: current_empresa&.id, licitacion_id: params[:id], propuesta: params[:propuesta] )
    if @postulacion.save
      redirect_to root_path 
    else 
      render :licitacion
    end 
  end 

end
