class FlatsController < ApplicationController
  before_action :set_flats, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def create
    @flat = Flat.new(flats_params)
    @flat.save
    redirect_to @flat
  end

  def new
    @flat = Flat.new
  end

  def edit
  end

  def update
    @flat.update(flats_params)
    redirect_to @flat
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def set_flats
    @flat = Flat.find(params[:id])
  end

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
