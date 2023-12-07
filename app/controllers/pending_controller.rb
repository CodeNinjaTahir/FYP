class PendingController < ApplicationController
    def requested
        @user=Client.find_by(id: session[:user_id])
        @board_details = Board.joins(:client_boards).select("boards.id,boards.name,boards.company_name,client_boards.content_approved,client_boards.payment_approved,client_boards.id").where(client_boards: {client_id: session[:user_id]})

    end
    def openbill
        @booking_detail = ClientBoard.where(id: params[:id])
        @board= Board.find_by(id: @booking_detail.first.board_id)
        @owner_bank_details=OwnerBankDetail.where(owner_id: @board.owner_id)
    end
    
    def deleterecord
        BoardPayment.where(client_board_id: params[:id]).destroy_all
        ClientBoard.delete(params[:id])
        redirect_to client_path
    end
end