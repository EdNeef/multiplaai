class HomeController < ApplicationController

  def index
    @vacatures = Vacature.last(5).reverse
  end

end
