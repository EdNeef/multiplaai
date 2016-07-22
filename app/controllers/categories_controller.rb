class CategoriesController < ApplicationController


  def new
    @categorie = Category.new
  end

  def create
    @categorie = Category.new(vacature_params)
    if @categorie.save
      flash[:success] = "De categorie is met succes toegevoegd!"
      redirect_to new_category_path
    else
      flash[:danger] = "De categorie kon niet worden toegevoegd."
      redirect_to new_category_path
    end
  end

  def destroy
    @categorie = Category.find(params[:id])
    @categorie.destroy
    flash[:success] = "De Categorie is met succes verwijderd!"
    redirect_to admin_categories_path
  end

  def edit
    @categorie = Category.find(params[:id])
  end

  def update
   @categorie = Category.find(params[:id])
    if @categorie.update(vacature_params)
      flash[:success] = "De categorie is met succes geupdate!"
      redirect_to admin_categories_path
      else
      flash[:danger] = "De categorie is NIET geupdate!"
      redirect_to admin_categories_path
      end
  end


  def vacature_params
    params.require(:category).permit(:title, :logo)
  end


end