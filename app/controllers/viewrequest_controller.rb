class ViewrequestController < ApplicationController
    def viewrequests
        @board_details=Owner.find_by(id: session[:user_id]).boards
        @user=Owner.find_by(id: session[:user_id])
        @booking_details=ClientBoard.where(board_id: @board_details.ids)
    end

    def openrequest
        @request_detail=ClientBoard.find_by(id: params[:id])
    end
    def openpayment
        @booking=ClientBoard.find_by(id: params[:id])
       @payment_detail=BoardPayment.where(client_board_id: params[:id])
    end    

    def approvecontent
        @request_detail=ClientBoard.find_by(id: params[:id])
        if @request_detail.update(content_approved: 2)
            redirect_to viewrequest_viewrequests_path(session[:user_id])
        end
    end
    def approvepayment
        @request_detail=ClientBoard.find_by(id: params[:id])
        @board=Board.find_by(id: @request_detail.board_id)
        if @request_detail.update(payment_approved: 2)
            if @board.update(status: "booked")
                redirect_to owner_path
            end    
        end
    end

    def rejectcontent
        @request_detail=ClientBoard.find_by(id: params[:id])
        if @request_detail.update(content_approved: -1)
            redirect_to viewrequest_viewrequests_path(session[:user_id])
        end
    end

    def rejectpayment
        @request_detail=ClientBoard.find_by(id: params[:id])
        if @request_detail.update(payment_approved: -2)
            redirect_to viewrequest_viewrequests_path(session[:user_id])
        end
    end
end