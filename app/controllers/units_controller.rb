class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end

  def import
  end

  def parse
    format = params[:format]
    Etl::ParserOrganizer.call(format)
  end
end
