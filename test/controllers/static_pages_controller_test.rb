require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # The setUp prepares anything we'd like to have pre-configured in the subsequent tests.
  def setup 
    @base_title = "Rails tutorial sample app"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    # Asserting that the title is "somehow" dynamic.
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    # Asserting that the title is "somehow" dynamic.
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    # Asserting that the title is "somehow" dynamic.
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    # Asserting that the title is "somehow" dynamic.
    assert_select "title", "Contact | #{@base_title}"
  end
end
