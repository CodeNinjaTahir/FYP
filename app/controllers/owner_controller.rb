class OwnerController < ApplicationController
    def ownerdashboard
        if session[:user_id]
            @user = Owner.find_by(id: session[:user_id])
        end
    end
    
      
end