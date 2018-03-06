module ApplicationHelper
    # Returns the full page title.
    def full_title(page_title = '')
        base_title = "Rails tutorial sample app"
        return base_title if page_title.empty?
        "#{page_title} | #{base_title}"
    end
end
