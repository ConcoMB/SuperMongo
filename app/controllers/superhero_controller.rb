class SuperheroController < ApplicationController

  def new
    @cities = City.all
  end

  def create
    s = Superhero.new(params[:superhero])
    s.city = City.find(params[:city])
    s.save
    redirect_to city_index_path
  end

end