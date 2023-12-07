class ClientbookedController < ApplicationController
    def clientbookedbillboards
        @user=Client.find_by(id: session[:user_id])
        @board_details=Client.find_by(id: session[:user_id])
        @booking_details=ClientBoard.where(client_id: @board_details.id)
    end
end