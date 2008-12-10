class ImageSweeper < ActionController::Caching::Sweeper
  observe Image

  def after_create(record)
    expire_group(record)
    expire_index if record.group.images.length == 1
  end

  def after_update(record)
    expire_group(record)
    expire_index if record.id == record.group.images.first.id
  end

  def after_destroy(record)
    expire_group(record)
    if record.group.images.blank?
      expire_index
    else
      expire_index if record.id < record.group.images.first.id
    end
  end

  private

  def expire_index
    expire_page(:controll => 'groups')
    expire_page('/index.html')
  end

  def expire_group(record)
    FileUtils.rm_r(ActionController::Base.page_cache_directory + "groups/#{record.group.id}") rescue Errno::ENOENT
  end
end
