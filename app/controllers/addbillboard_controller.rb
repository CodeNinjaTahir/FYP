class AddbillboardController < ApplicationController
      
    def add
        if session[:user_id]
            @user = Owner.find_by(id: session[:user_id])
        end
    end
    def addboard
            @board = Board.new(board_params)
            @user = Owner.find_by(id: session[:user_id])
            @count = OwnerBankDetail.where(owner_id: @user.id).count
            if @board.save!
                    
                redirect_to owner_path
            else
                flash[:error] = 'User Not Registered'
            end
    end
    
    private
    
    def board_params()
        params.permit(:name ,:owner_id, :company_name, :screen_size, :location, :price, :status, :viewership_count, :tpye, :image)
    end
end