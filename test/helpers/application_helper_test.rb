require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "微博"
    assert_equal full_title("帮助"), "帮助 | 微博"
  end
end