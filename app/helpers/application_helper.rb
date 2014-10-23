module ApplicationHelper

  def page_title(title = nil)
    base="Weight Agent"
    if title
      content_for(:page_title) { base + ' | ' + title }
    else
      content_for?(:page_title) ? content_for(:page_title) : base
    end
  end

end
