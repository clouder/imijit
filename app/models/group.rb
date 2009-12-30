class Group < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :images, :dependent => :destroy
  after_create :make_group_folder
  after_update :rename_image_folder
  after_destroy :remove_image_folder

  protected

  def make_group_folder
    FileUtils.mkdir_p("#{RAILS_ROOT}/public/images/#{self.name.downcase}")
  end

  def remove_image_folder
    FileUtils.rm_r("#{RAILS_ROOT}/public/images/#{self.name.downcase}")
  end

  def rename_image_folder
    FileUtils.mv("#{RAILS_ROOT}/public/images/#{self.name_was.downcase}", "#{RAILS_ROOT}/public/images/#{self.name.downcase}")
  end
end
