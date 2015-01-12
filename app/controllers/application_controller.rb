class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :enable_cors

  def enable_cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

  protected
  def authenticate_user!
    if !user_signed_in?
      redirect_to "/users/sign_in"
    else
      super
    end
  end

end
