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
  	if (@page == 1 and 10 > @tweets.count )then return end 
  	max = @page + 5
    min = @page - 5 >= 1 ? @page - 5 : 1

    link = link_to('prev', 'javascript:void(0)', onclick: "clickPage('#{@query}', '#{@max_id}', '#{@page - 1}')")
    class_list = "active" if @page == 1
    pages = [content_tag(:li, link, class: class_list)]

    (min..max).each do |page|
      link = link_to(page, 'javascript:void(0)', onclick: "clickPage('#{@query}', '#{@max_id}', '#{page}')")
      class_list = @page == page ? "active" : ""
      pages << content_tag(:li, link, class: class_list)
    end

    link = link_to('prev', 'javascript:void(0)', onclick: "clickPage('#{@query}', '#{@max_id}', '#{@page + 1}')")
    pages << content_tag(:li, link)

    pages.join("\n").html_safe
  end
end