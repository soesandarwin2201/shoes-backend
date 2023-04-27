class ShoesController < ApplicationController
  before_action :set_shoe, only: %i[show edit update destroy]

  def index
    @shoes = Shoe.all
    render json: @shoes, include: %i[images sizes colors]
  end

  def show
    render json: @shoe, include: %i[images sizes colors]
  end

  def new
    @shoe = Shoe.new
    @shoe.images.build
    @shoe.sizes.build
    @shoe.colors.build
  end

  def create
    @shoe = Shoe.new(shoe_params)

    if @shoe.save
      render json: @shoe, status: :created, location: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shoe.destroy
    render json: { message: 'Shoe successfully destroyed' }
  end

  private

  def set_shoe
    @shoe = Shoe.find(params[:id])
  end

  def shoe_params
    params.require(:shoe).permit(:name, :price, :description, :sale, :category, images_attributes: %i[id url],
                                                                                sizes_attributes: %i[id size], colors_attributes: %i[id color])
  end
end
