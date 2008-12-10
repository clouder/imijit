# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :authenticate
  before_filter :authorized?, :except => ['index', 'show']
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

  def authenticate
    return if open_to_public?
    @authenticated = authenticate_or_request_with_http_basic do |u,p|
      (u == 'admin') && (p == 'admin')
    end
  end

  def authorized?
    if !@authenticated
      if request.env['HTTP_REFERER']
        redirect_to request.env['HTTP_REFERER']
      else
        redirect_to root_url
      end
    end
  end

  def is_authorized?
    @authenticated
  end
end
