class UsersController < ApplicationController
  skip_before_filter :authenticate
  before_filter :authenticate

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'Account registered!'
      redirect_back_or_default account_url
    else
      render :action => 'new'
    end
  end

  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Account updated!'
      redirect_to account_url
    else
      render :action => 'edit'
    end
  end
end
