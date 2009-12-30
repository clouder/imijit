require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  should_require_attributes :name
  should_require_unique_attributes :name
  should_have_many :images, :dependent => :destroy

  should 'do something' do
    assert FileUtils
  end
end
