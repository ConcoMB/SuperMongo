class CityController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
  end

  def create
    City.create(params[:city])
    redirect_to city_index_path
  end

end