class AdminController < ApplicationController

  def index
    @vacatures = Vacature.all
  end

  def vacatures
    @vacatures = Vacature.all
  end

  def categories
    @categories = Category.all
  end


end
