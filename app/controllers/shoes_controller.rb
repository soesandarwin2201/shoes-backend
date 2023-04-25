class ShoesController < ApplicationController
     before_action :set_shoe, only: [:show, :edit, :update, :destroy]

     def index 
          @shoes = Shoe.all
          render json: @shoes, include: [:images, :sizes, :colors]
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

   private
    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    def shoe_params
      params.require(:shoe).permit(:name, :price, :description, :sale, :category, images_attributes: [:id, :url], sizes_attributes: [:id, :size], colors_attributes: [:id, :color])
    end
end
