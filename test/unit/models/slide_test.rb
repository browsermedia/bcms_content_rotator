require File.join(File.dirname(__FILE__), '/../../test_helper')

module BcmsContentRotator
  class SlideTest < ActiveSupport::TestCase

    test "should be able to create new block" do
      assert Slide.create!
    end
  
    test "a Slide with a link_url should have a link" do
      assert_equal true, Slide.new(:link_url=>"anything").has_link?
    end
  
    test "a Slide with no link_url shouldn't have a link" do
      assert_equal false, Slide.new.has_link?    
    end
  
  
  end
end