class ReservationsController < ApplicationController

     def index 
          @reservations = Reservation.all
          render json: @reservations, include: [:user, :shoes]
     end
end
