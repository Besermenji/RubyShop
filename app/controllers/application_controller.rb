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
    role_names = []
    if current_user
      users_roles = UserRole.where(user_id: @current_user.id).to_a 
      users_roles.each do |x|
        role_names << Role.find_by(id: x.role_id).name
      end
    end
    role_names
  end
  
  helper_method :is_admin?
  def is_admin?
    get_role_array.include? "admin"
  end
  helper_method :is_user?
  def is_user?
    get_role_array.include? "user"
  end
end
