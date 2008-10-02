class Group < ActiveRecord::Base
  has_many :images, :dependent => :destroy
  after_update :rename_image_folder
  after_destroy :remove_image_folder

  protected

  def remove_image_folder
    system("rm -R #{RAILS_ROOT}/public/images/#{self.name.downcase}")
  end

  def rename_image_folder
    system("mv #{RAILS_ROOT}/public/images/#{self.name_was.downcase} #{RAILS_ROOT}/public/images/#{self.name.downcase}")
  end
end
