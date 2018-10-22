class Api::V1::PlanetsController < ApplicationController
  def index
    @planets = Planet.all
    render json: @planets
  end

  def show
    @planet = Planet.find(params[:id])
    render json: @planet
  end

  def update
    @planet = Planet.find(params[:id]).update(planet_params)
    render json: @planet
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :image_url)
  end
end
