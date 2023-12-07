class OwnerbookedController < ApplicationController
    def ownerbookedbillboards
        @board_details=Owner.find_by(id: session[:user_id]).boards
        @user=Owner.find_by(id: session[:user_id])
        @booking_details=ClientBoard.where(board_id: @board_details.ids)
    end
end