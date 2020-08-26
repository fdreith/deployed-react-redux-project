class ApplicationController < ActionController::API
  include ::ActionController::Cookies

  def current_user
    binding.pry
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    binding.pry
    !!current_user
  end

end
