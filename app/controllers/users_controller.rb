class UsersController < ApplicationController

    def show
        # finds a user in the databse using the user id from the session hash
        user = User.find(session[:user_id])

        # returns the user as a JSON object
        render json: user
    end

end
