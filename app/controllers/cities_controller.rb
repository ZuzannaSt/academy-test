class CitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all.paginate(page: params[:page], per_page: 5)
  end

  def new
    @city = City.new
  end

  def edit
  end

  def create
    @city = City.new(city_params)
    
    if @city.save
      redirect_to @city
    else
      render 'new'
    end
  end

  def update
    if @city.update(city_params)
      redirect_to @city
    else
      render 'edit'
    end
  end

  def destroy
    @city.destroy
    redirect_to cities_path
  end

  private
    def city_params
      params.require(:city).permit(:name, :short_name)
    end

    def set_city
      @city = City.find(params[:id])
    end
end
