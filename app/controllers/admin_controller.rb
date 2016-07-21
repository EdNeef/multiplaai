class AdminController < ApplicationController
  def index
    @vacatures = Vacature.new
  end

  def new
    @vacature = Vacature.new
  end

  def create
    @vacature = Vacature.new(vacature_params)
    if @vacature.save
      flash[:success] = "vacature toegevoegd"
      redirect_to root_url
    else
      flash[:error] = "niet gelukt"
      redirect_to root_url
    end
  end



  def vacature_params
    params.require(:vacature).permit(:title, :category)
  end

end
