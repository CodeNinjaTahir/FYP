class OwnerprofileController < ApplicationController
    
    def Oprofile
        
    end
    def edit
        @user = Owner.find(params[:id])
    end
    def update
        @user = Owner.find(params[:id])
        @user.update(owner_params)
        
        
    end    
    private  
    def owner_params
        params.permit(:email, :contact_no, :address)
    end
   
end