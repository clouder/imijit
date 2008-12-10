class GroupsController < ApplicationController
  cache_sweeper :group_sweeper, :only => [:create, :update, :destroy]

  def index
    @groups = Group.find(:all, :include => :images, :order => 'created_at DESC')

    respond_to do |f|
      f.html
    end
  end

  def show
    respond_to do |f|
      f.html { redirect_to group_images_url(params[:id]) }
    end
  end

  def new
    @group = Group.new

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
        raise 'err'
        f.html { render :action => 'new' }
      end
    end
  end

  def edit
    @group = Group.find(params[:id])

    respond_to do |f|
      f.html
    end
  end

  def update
    @group = Group.find(params[:id])

    respond_to do |f|
      if @group.update_attributes(params[:group])
        f.html { redirect_to group_image_url(@group, @group.images.first) }
      else
        raise 'that update failed'
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
