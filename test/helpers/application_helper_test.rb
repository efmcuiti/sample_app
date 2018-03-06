require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
    # To ensure that the title helper works as expected.
    test "full title helper" do
        assert_equal full_title, "Rails tutorial sample app"
        assert_equal full_title("Help"), "Help | Rails tutorial sample app"
    end
end