class AppuserController < ApplicationController
  protect_from_forgery
  layout 'appuserLayout'
  def index
    byebug
    # @current_user = User.find(session[:user_id])
    p session["userid"]
    if(session["userid"].to_s=="")
      redirect_to '/'
    else

    end
  end
end
