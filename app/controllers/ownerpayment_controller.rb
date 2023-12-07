class OwnerpaymentController < ApplicationController
    def ownerpaymentdetails
    end
    def edit
        @user = OwnerBankDetail.where(owner_id: params[:id])
    end
    def update
        @user = OwnerBankDetail.where(owner_id: params[:id])
        @user.update(owner_params)
    end

    private  
    def owner_params
        params.permit(:bank, :acc_number, :acc_name)
    end
end