require 'test_helper'
class ApplicationHelperTest < ActionView::TestCase

  test "full title helper" do
    assert_equal full_title, Sign up
    assert_equal full_title("Help"), 
    The Ruby on Rails Tutorial by Michael Hartl 
  end

end