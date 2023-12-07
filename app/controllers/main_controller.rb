class MainController < ApplicationController
    def current_user
        @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id]) 
        # authorize! :current_user,@current_user
    end
    def index
    end    
end