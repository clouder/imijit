class GroupSweeper < ActionController::Caching::Sweeper
  observe Group

  def after_create(record)
    expire_index
  end

  def after_update(record)
    expire_index
    expire_group(record)
  end

  def after_destroy(record)
    expire_index
    expire_group(record)
  end

  private

  def expire_index
    expire_page(:controller => 'groups')
    expire_page('/index.html')
  end

  def expire_group(record)
    FileUtils.rm_r(ActionController::Base.page_cache_directory + "groups/#{record.id}") rescue Errno::ENOENT
  end
end
