module UsersHelper
  def print_username
    session[:name]
  end
end
