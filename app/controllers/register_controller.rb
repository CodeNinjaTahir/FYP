class RegisterController < ApplicationController

    def signup
        @owner = Owner.new
        @client = Client.new
    end
    def create
        if record?(params[:owner][:email])
            flash[:error] = 'Email not unique!'
            redirect_to register_path
            puts "hahahahahha"
            return
        end
        if params[:owner][:status] == "owner"
            puts "Creating"
            @owner = Owner.new(register_owner)
            if @owner.save!
                session[:owner_id] = @owner.id
                redirect_to login_path
            else
                flash[:error] = 'User Not Registered'
                redirect_to register_path
            end
        elsif params[:owner][:status] == "b"
            puts params[:owner][:password]
            @client = Client.new(register_client)
            if @client.save!
                session[:owner_id] = @client.id
                redirect_to login_path
            else
                puts @client.errors
                flash[:error] = 'User Not Registered'
                redirect_to register_path
            end
        else    
            flash[:error] = 'Please chose your role.'
            redirect_to register_path
        end     
             
    end    
    def record?(email)
        (Owner.exists?(email: email) || Client.exists?(email: email))
    end  
    private
              

    def register_owner
        params.require(:owner).permit(:email, :company_name, :address, :contact_no, :password, :password_confirmation)
    end    
    def register_client
        params.require(:owner).permit(:email, :company_name, :address, :contact_no, :password, :password_confirmation)
    end    
       
end
