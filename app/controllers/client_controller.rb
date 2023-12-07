class ClientController < ApplicationController
    def clientdashboard
        @user=Client.find_by(id: session[:user_id])
    end
end