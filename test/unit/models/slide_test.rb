require File.join(File.dirname(__FILE__), '/../../test_helper')

class SlideTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Slide.create!
  end
  
end