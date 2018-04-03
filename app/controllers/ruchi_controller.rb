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

    tpass= user_params[:pass]
    trepass= user_params[:repass]  
    if(tpass == trepass)
      
      reg=User.new(user_params)

      if reg.save
        # p reg.id
        redirect_to '/ruchi/showLogin'
      else
        flash[:register_error]=reg.errors.full_messages
      end
    else
      redirect_to '/ruchi/index?error=5'
      # p "incorrect password"
      # p ">>>>>>>>>>>>>>>>>>>>>>>>"
    end
    
  end

 
  def JsonTest
    #byebug
    @test=User.all
    respond_to do |format|
      format.json {render json:@test}
    end
    #respond_with @test
    #render :json => @test
    
  end


  #Login Functionality
  def login
   
    #byebug
    txtemail = f_params[:email]
    txtpass = f_params[:pass]
    #p 'User ID '+txtemail
    dearUser = User.where(email: txtemail).first
    #p @dearUser[:id]

    
    if(txtpass == dearUser.pass)
      session[:ravi]=dearUser.id
      session[:user_email]=dearUser.email
    #  p "--------------ruchi controller---------------"+ session[:ravi].to_s
      userid= dearUser.id

      redirect_to "/appuser/index?user="+userid.to_s

    else
      redirect_to '/users/showLogin?error=1'
    end

  end 



  def ViewUser
    @title = "User"

    @test=User.all

  end

  

  private
    def user_params
      params.require(:user).permit(:fname, :lname,:email,:pass, :repass)
      
    end
    def f_params
      params.require(:f).permit(:email,:pass)
    end
end
