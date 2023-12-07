class PendingrequestController < ApplicationController
    def pendingrequests
        
    end
    def create

        @booking = ClientBoard.new(input_params)
     
            if @booking.save!
                redirect_to pending_path
            else
                flash[:error] = 'User Not Registered'
                redirect_to viewbillboards_path
            end
    end

    private  
    def input_params
        params.permit(:client_id, :board_id, :start_date, :end_date, :total_bill, :content_approved, :payment_approved, :video)
    end
end