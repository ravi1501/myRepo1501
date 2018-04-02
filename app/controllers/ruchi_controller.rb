class RuchiController < ApplicationController
  protect_from_forgery
  #skip_before_action :verify_authenticity_token, if: :json_request?
  #respond_to :js, :json, :html
  layout 'MyLayout'
  def index
    @title = "Sign up"
  end

  def showLogin
    @title = "Sign In"
  end

  #SignUP page
  def signup
    @title = "Sign up"
  end

  def register
    #byebug
    reg=User.new(user_params)
    if reg.save
      session[:user_id]=reg.id
      redirect_to '/ruchi/showLogin'
    else
      flash[:register_error]=reg.errors.full_messages
    end
  end

  
  #respond_to :js, :json, :html
  def JsonTest
    #byebug
    @test=User.all
    respond_to do |format|
      format.json {render json:@test}
    end
    #respond_with @test
    #render :json => @test
    
  end


  def ViewUser
    @title = "User"

    @test=User.all

  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname,:email,:pass)
    end

end
