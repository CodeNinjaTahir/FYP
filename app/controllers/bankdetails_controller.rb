class BankdetailsController < ApplicationController
    def addbankdetails
        @count = OwnerBankDetail.where(owner_id: session[:user_id]).count
        @owner = Owner.find_by(id: session[:user_id])
        if @count == 0
            render "addbankdetails"
            return
        end
        redirect_to edit_ownerpayment_path(session[:user_id])
    end
    def create
        @bankdetails = OwnerBankDetail.new(board_params)
            if @bankdetails.save!
                redirect_to owner_path
            end    
    end
    private
    
    def board_params
        params.permit(:bank, :owner_id, :acc_name, :acc_number)
    end
end