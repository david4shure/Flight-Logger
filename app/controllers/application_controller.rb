class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def authenticate_user!
    if !user_signed_in?
      redirect_to "/users/sign_in", :notice => 'if you want to add a notice'
    else
      super
    end
  end

end
