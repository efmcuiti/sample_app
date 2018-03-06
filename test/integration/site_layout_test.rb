require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # What we are going to test:
  # 1. Get the root path (Home page)
  # 2. Verify that the right page template is rendered.
  # 3. Check for the correct links to the Home, Help, About , and Contact pages.
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", full_title("Contact")
    get signup_path
    assert_select "title", full_title("Sign up")
  end
end
