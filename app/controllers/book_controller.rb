class BookController < ApplicationController
    def show
        @board = Board.find_by(id: params[:id])
        @user =  Client.find_by(id: session[:user_id])
    end
    def index
    end
end