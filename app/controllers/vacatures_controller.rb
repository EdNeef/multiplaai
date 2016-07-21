class VacaturesController < ApplicationController

  def index
    @vacatures = Vacature.all
  end

  def latest
    @vacatures = "hoi"
  end

end