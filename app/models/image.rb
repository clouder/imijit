class Image < ActiveRecord::Base
  belongs_to :group
  after_validation_on_create :set_filename
  after_create :make_images
  after_update :make_thumbnail
  
  validates_associated :group
  validates_presence_of :group

  def validate_on_create
    errors.add_to_base 'You did not select a file.' if no_file?
    errors.add_to_base 'The file you selected has no data.' if file_is_empty?
    errors.add_to_base 'File must be a jpg, gif, or png.' if !valid_content_type?
  end

  def upload=(file)
    @file = file
  end

  def url(style='original')
    "#{self.group.name.downcase}/#{self.id}/#{style}#{File.extname(self.filename)}"
  end

  protected

  def no_file?
    @file.blank?
  end

  def file_is_empty?
    return false if no_file?
    @file.size <= 0
  end

  def valid_content_type?
    return false if no_file?
    ['image/jpeg', 'image/gif', 'image/png'].include?(@file.content_type)
  end

  def set_filename
    self.filename = @file.original_filename
  end
    
  def make_images
    if @file.class.superclass == Tempfile
      system("mkdir -p #{storage_path}")
      system("convert #{@file.path} #{storage_path}/original#{File.extname(self.filename)}")
      system("convert -crop #{geometry_string} #{@file.path} #{storage_path}/thumb#{File.extname(self.filename)}")
    else
      raise 'create a temp file first'
    end
  end

  def make_thumbnail
    system("convert -crop #{geometry_string} #{storage_path}/original#{File.extname(self.filename)} #{storage_path}/thumb#{File.extname(self.filename)}")
    system("mogrify -resize 150 #{storage_path}/thumb#{File.extname(self.filename)}")
  end

  def remove_images
    system("rm -R #{storage_path}")
  end

  def storage_path
    "#{RAILS_ROOT}/public/images/#{self.group.name.downcase}/#{self.id}"
  end
  
  def geometry_string
    g = self.geometry.split
    "#{g[0]}x#{g[1]}+#{g[2]}+#{g[3]}"
  end

  def offset_for_center
    dimensions = `identify #{@file.path}`.split[2].split('x').map { |i| i.to_i }
    width, height = dimensions[0], dimensions[1]
    x_pos = width/2 - area[0]/2
    y_pos = height/2 - area[2]/2
    "+#{x_pos}+#{y_pos}"
  end
end
