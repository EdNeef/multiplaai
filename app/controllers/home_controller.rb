class HomeController < ApplicationController

  def index
    @vacatures = Vacature.all
  end

end
