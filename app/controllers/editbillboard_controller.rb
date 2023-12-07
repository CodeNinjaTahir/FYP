class EditbillboardController < ApplicationController

def edit
    @board = Board.find[params[:id]]
end
def update
    @board_name = params['name']
    @board = Board.find_by(name: @board_name)
    @board.update(board_params)
end

private

def board_params
    params.permit(:name, :company_name, :screen_size, :location, :price, :status, :viewership_count)
end
end