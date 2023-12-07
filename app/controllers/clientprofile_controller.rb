class ClientprofileController < ApplicationController
    def profile
        
    end
    def edit
        @user = Client.find(params[:id])
    end
    def update
        @user = Client.find(params[:id])
        @user.update(owner_params)
        
        
    end    
    private  
    def owner_params
        params.permit(:email, :contact_no, :address)
    end
end