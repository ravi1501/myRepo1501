class AppuserController < ApplicationController
  protect_from_forgery
  layout 'appuserLayout'


  def index
    #byebug
    
    dearUser = User.where(id: params[:user]).first
    #p "mY PARAMETER==========" +params[:user].to_s

    session[:ravi]=dearUser.id

    if(session[:ravi]!=nil)
      @title=dearUser.fname.to_s  
      @id=dearUser.id  
    else
      redirect_to '/'
    end
  end

  def destroy
    #byebug
    reset_session
    session[:ravi] = nil
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
    redirect_to "/article/index"
  end

  def logout
    #cbyebug
    # if(session[:ravi]==nil)
    #   redirect_to "/appuser/logout"
    # else

    #end
  end


end
