class ShowboardsController < ApplicationController
    
    def showboards
        @board = Board.all
        @user = Owner.find_by(id: session[:user_id])
        @board2 = Board.where(company_name: @user.company_name)
        # @count = ClientBoard.where(board_id: @board).count
    end
    def edit
        @board = Board.find(params[:id])
    end
    def update
        
        @board = Board.find(params[:id])
        if @board.update(board_params)
            redirect_to showboards_path
        else
            render edit    
        end    
    end
    def destroy
        @board = Board.find(params[:id])
        if @board.destroy
            flash[:notice] ="Board deleted successfully!"
            redirect_to showboards_path 
        end
    end    
    private
    
    def board_params
        params.permit(:name, :company_name, :screen_size, :location, :price, :tpye, :status, :viewership_count)
    end
    
end
