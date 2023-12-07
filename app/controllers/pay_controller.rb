class PayController < ApplicationController
    def payment
        @booking_id = params['id']

    end

    def pay
        @payment = BoardPayment.new(board_params)
        if @payment.save!
            @board_details = ClientBoard.find_by(id: board_params['client_board_id'])
            if @board_details.update(payment_approved: 1)
                redirect_to pending_path
            end
        else
            flash[:error] = 'User Not Registered'
        end
    end
    
    private
    
    def board_params
        params.permit(:bank_name, :account_name, :account_number, :amount, :payment_date, :client_board_id, :payment_slip)
    end
end