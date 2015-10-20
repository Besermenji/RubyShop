class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  

  #method that check if user is logged in
  def require_user
    redirect_to "/login" unless current_user
  end

  #gets current users role names
  private
  def get_role_array
    users_roles = UserRole.find_by(user_id: @current_user.id).to_a
    role_names = [] 
    users_roles.each do |x|
      role_names << Role.find_by(id: x.role_id).role_name
    end

    role_names
  end

  def is_admin?
    get_role_array.include? "admin"
  end

  def is_user?
    get_role_array.include? "user"
  end
end
