class AppuserController < ApplicationController
  protect_from_forgery
  layout 'appuserLayout'


  def index
    #byebug
    session[:ravi]=params[:user]
    dearUser = User.where(id: params[:user]).first
    #p "mY PARAMETER==========" +params[:user].to_s

   

    if(session[:ravi]!=nil)
      @title=dearUser.fname.to_s  
      @id=dearUser.id  
    else
      redirect_to '/'
    end
  end

  def destroy
    reset_session
    redirect_to "/"
  end


end
