module ImagesHelper
  def image? image
    if image.blank?
      'rails.png'
    else
      @image.url
    end
  end
end
