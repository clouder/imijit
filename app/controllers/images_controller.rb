class ImagesController < ApplicationController
  before_filter :load_group
  cache_sweeper :image_sweeper, :only => [:create, :update, :destroy]

  def index
    @image = @group.images.find(:first)

    respond_to do |f|
      f.html { render :action => 'show' }
    end
  end

  # Try to get the image from the :id passed in the url.  If it fails
  # make sure it's intentional and not random user nonsense.  The
  # reason for this is as to not generate a bazillion caches of the
  # same page.
  def show
    begin
      @image = @group.images.find(params[:id])
    rescue => e
      if params[:id] != '0'
        raise e
      end
    end

    respond_to do |f|
      f.html
    end
  end

  def create
    @image = @group.images.build(params[:image])

    respond_to do |f|
      if @image.save
        f.html { redirect_to group_image_url(@group, @image) }
      else
        f.html { render :action => 'new' }
      end
    end
  end

  def edit
    @image = @group.images.find(params[:id])

    respond_to do |f|
      f.html
    end
  end

  def update
    @image = @group.images.find(params[:id])

    respond_to do |f|
      if @image.update_attributes(params[:image])
        f.html { redirect_to group_images_url(@group) }
      else
        raise 'that update failed'
      end
    end
  end

  def destroy
    @group.images.find(params[:id]).destroy

    respond_to do |f|
      f.html { redirect_to group_images_url(@group) }
    end
  end

  private

  def load_group
    @group = Group.find(params[:group_id])
  end
end
