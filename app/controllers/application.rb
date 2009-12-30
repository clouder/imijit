# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :authenticate, :except => ['index', 'show']
  helper_method :is_authorized?
  caches_page :index, :if => Proc.new { |c| c.open_to_public? }
  caches_page :show, :if => Proc.new { |c| c.open_to_public? }
  #helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '0df555cf4b66ddabb4389f966ed2bed2'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

  def open_to_public?
    request.subdomains.first != 'admin'
  end

  private

  def authenticate
    if open_to_public?
      render :file => "#{RAILS_ROOT}/public/404.html", :status => '404'
      return
    end
    require_user
  end

  def is_authorized?
    @current_user
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user_session)
    @current_user = current_user_session && current_user_session.user
  end

  def require_user
    unless current_user
      store_location
      flash[:notice] = 'You must be logged in to access this page'
      redirect_to new_user_session_url
      return false
    end
  end

  def require_no_user
    if current_user
      store_location
      flash[:notice] = 'You must be logged out to access this page'
      redirect_to account_url
      return false
    end
  end

  def store_location
    session[:return_to] = request.request_uri
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
