class VacaturesController < ApplicationController

  def index
    @categories = Category.all
    @vacatures = Vacature.by_category_id_and_location(params[:category_id], params[:location])
  end

  def new
    @vacature = Vacature.new
    @category = Category.all

  end

  def create
    @category = Category.all
    @vacature = Vacature.new(vacature_params)
    if @vacature.save
      flash[:success] = "De vacature is met succes toegevoegd!"
      redirect_to new_vacature_path
    else
      flash[:danger] = "De vacature kon niet worden toegevoegd."
      redirect_to new_vacature_path
    end
  end

  def edit
    @category = Category.all
    @vacature = Vacature.find(params[:id])
  end

  def update
    @vacature = Vacature.find(params[:id])
    if @vacature.update(vacature_params)
      flash[:success] = "De vacature is met succes geupdate!"
      redirect_to admin_path
      else
      flash[:danger] = "De vacature is NIET geupdate!"
      redirect_to edit_vacature_path
      end

  end

  def destroy
    @vacature = Vacature.find(params[:id])
    @vacature.destroy
    flash[:success] = "De vacature is met succes verwijderd!"
    redirect_to admin_vacatures_path
  end

  def show
    @vacature = Vacature.find(params[:id])
  end


  private

    def vacature_params
      params.require(:vacature).permit(:title, :description, :function, :location, :category, :category_id)
    end

end