class SessionsController < ApplicationController

def new
end

def create
  binding.pry
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to(users_trips_path(user))
    else
      flash[:error] = "Incorrect username or password."
      redirect_to(login_path)
    end
  end

  def destroy
    log_out!
    redirect_to(root_path)
  end

end
