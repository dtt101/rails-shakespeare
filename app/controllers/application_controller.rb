class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  def not_authenticated
    redirect_to login_url, :alert => "Out, vile jelly."
  end
  
end
