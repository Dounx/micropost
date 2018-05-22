require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
  @base_title = "微博"
  end
  
  test "should get home" do
  get root_path
  assert_response :success
  assert_select "title", "微博"
  end

  test "should get help" do
  get help_path
  assert_response :success
  assert_select "title", "帮助 | #{@base_title}"
  end

  test "should get about" do
  get about_path
  assert_response :success
  assert_select "title", "关于 | #{@base_title}"
  end

  test "should get contact" do
  get contact_path
  assert_response :success
  assert_select "title", "联系 | #{@base_title}"
  end
end