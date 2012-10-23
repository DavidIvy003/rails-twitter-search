module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Tweeter Search"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def create_page_links
  	if (10 > @tweets.count) then return end 
  	max = @page + 5
    min = @page - 5 >= 1 ? @page - 5 : 1

  	pages = "<li #{'class="active"' if @page == 1}>#{link_to('prev', search_twitter_path(search: @query, max_id: @max_id, page: @page - 1))}</li>"

    (min..max).each do |page|
      pages += "<li #{'class="active"' if @page == page }>#{link_to page, search_twitter_path(search: @query, max_id: @max_id, page: page)}</li>"
    end
    pages += "<li>#{link_to('next', search_twitter_path(search: @query, max_id: @max_id, page: @page + 1))}</li>"
    
    pages.html_safe
  end
end