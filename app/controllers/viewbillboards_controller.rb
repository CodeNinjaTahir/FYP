class ViewbillboardsController < ApplicationController
    def viewboards
        @user=Client.find_by(id: session[:user_id])
        @board= Board.all
    end
end