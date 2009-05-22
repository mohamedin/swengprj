# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  before_filter :initNavigator
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def initNavigator
     @categories = Category.find(:all);
     @jobs = JobOppertunity.find(:all);
     if session[:loggedUser]
       @permissions = Permission.find(:all, :conditions => ["user_id = ?", session[:loggedUser].id]);
     end
  end
end
