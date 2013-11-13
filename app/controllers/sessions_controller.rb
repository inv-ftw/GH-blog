class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:name] = user.name.capitalize
      redirect_to root_url, notice: "Logged in!"
    else
      redirect_to new_session_path, notice: 'Login or password incorrect!'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
