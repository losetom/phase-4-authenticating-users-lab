class SessionsController < ApplicationController

    def create
        # finds a user in the database using the username from params
        user = User.find_by(username: params[:username])

        # saves the user's ID to the session hash
        session[:user_id] = user.id 

        # returns the user as a JSON object
        render json: user 
    end

    def destroy
        # removes the user ID from the session hash
        session.delete :user_id

        # returns an empty reponse with a 204 No Content status code
        head :no_content
    end
end