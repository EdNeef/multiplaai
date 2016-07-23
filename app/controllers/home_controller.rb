class HomeController < ApplicationController

  def index
    @vacatures = Vacature.last(5).reverse
    @categories = Category.last(3)
  end

end
