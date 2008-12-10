class ImijitSweeper < ActionController::Caching::Sweeper
  observe Group, Image

  def after_create(record)
    if record.is_a?(Group) || is_group_thumbnail?(record)
      expire_index
    end
  end

  def after_update(record)
  end

  def before_destroy(record)
    if record.is_a?(Group) || is_group_thumbnail?(record)
      expire_index
    end
  end

  private

  def expire_index
    expire_page(:controller => 'groups')
    expire_page('/')
  end

  def is_group_thumbnail?(record)
    if record.is_a?(Image) && record.id == record.group.images.first.id
      expire_page("/groups/#{record.group.id}/images/#{record.id}.html")
      true
    end
  end
end
