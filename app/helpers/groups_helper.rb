module GroupsHelper
  def link_to_group group
    link_to image_tag(thumbnail(group), :alt => group.name,
                      :title => group.name),
                      group_image_url(group, group.images[0])
  end

  def thumbnail group
    if group.images.first.blank?
      'rails.png'
    else
      group.images.first.url('thumb')
    end
  end
end
