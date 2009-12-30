class UserSessionsController < ApplicationController
  skip_before_filter :authenticate
  before_filter :ensure_admin_subdomain

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = 'Login Successful!'
      redirect_back_or_default account_url
    else
      render :action => 'new'
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = 'Logout successful!'
    redirect_back_or_default new_user_session_url
  end

  private

  def ensure_admin_subdomain
    if open_to_public?
      render :file => "#{RAILS_ROOT}/public/404.html"
    end
  end
end
