class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
   # if @user && @user.authenticate(params[:session][:password])
    #  session[:user_id] = @user.id
   #   redirect_to "/"
   # else
    #  redirect_to "/login" 
   # end
    respond_to do |format|
#   if @user && @user.authenticate(params[:session][:password])
    # format.html{}
     format.js {}
    # format.json {}
  
     

  end 
#      format.html {redirect_to login_path}
     # format.js {render :template => "new.js.erb"}
     # format.html {render :template => "new.html.erb"}
#    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end
