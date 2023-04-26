class ReservationsController < ApplicationController
     before_action :set_reservation, only: [:show, :destroy]
     def index 
          @reservations = Reservation.all
          render json: @reservations, include: [:user, :shoes]
     end

     def show
          render json: @reservation, include: [:user, :shoes]
     end

     def new
          @reservation = Reservation.new
     end

     def create
          @reservation = Reservation.new(reservation_params)
      
          if @reservation.save
            render json: @reservation, status: :created, location: @reservation
          else
            render json: @reservation.errors, status: :unprocessable_entity
          end
        end

        def destroy
          @reservation.destroy
          head :no_content
        end
 
      private 

     def set_reservation
          @reservation = Reservation.find(params[:id])
        end
      
        def reservation_params
          params.require(:reservation).permit(:count, :size, :shoes_id, :user_id)
        end
end
