module ImagesHelper
  def main_image image
    if image.blank?
      image_tag 'rails.png'
    else
      image_tag @image.url
    end
  end

  def image? image
    if image.blank?
      'rails.png'
    else
      @image.url
    end
  end
end
