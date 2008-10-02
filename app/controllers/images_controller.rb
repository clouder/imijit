class ImagesController < ApplicationController
  before_filter :load_group

  def index
    @images = @group.images.find(:all)

    respond_to do |f|
      f.html
    end
  end

  def show
    @image = @group.images.find(params[:id])

    respond_to do |f|
      f.html
    end
  end

  def create
    @image = @group.images.build(params[:image])

    respond_to do |f|
      if @image.save
        f.html { redirect_to group_url(@group) }
      else
        f.html { render :action => 'new' }
      end
    end
  end

  def update
    @image = @group.images.find(params[:id])

    respond_to do |f|
      if @image.update_attributes(params[:image])
        f.html { redirect_to group_url(@group) }
      else
        raise 'that update failed'
      end
    end
  end

  def destroy
    @group.images.find(params[:id]).destroy

    respond_to do |f|
      f.html { redirect_to images_url }
    end
  end

  private

  def load_group
    @group = Group.find(params[:group_id])
  end
end
