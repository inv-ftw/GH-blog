class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Hello!"
    else
      redirect_to new_session_path, notice: "Login or password incorrect!"
    end
  end
end
