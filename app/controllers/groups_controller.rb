class GroupsController < ApplicationController
  def index
    @groups = Group.find(:all, :include => :images)

    respond_to do |f|
      f.html
    end
  end

  def show
    @group = Group.find(params[:id])

    respond_to do |f|
      f.html
    end
  end

  def create
    @group = Group.new(params[:group])
    
    respond_to do |f|
      if @group.save
        f.html { redirect_to groups_url }
      else
        f.html { render :action => 'new' }
      end
    end
  end
  
  def destroy
    Group.find(params[:id]).destroy

    respond_to do |f|
      f.html { redirect_to groups_url }
    end
  end
end
