require 'twitter-text'
module ApplicationHelper
	# Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "Josh Bryant | Web Developer"
		if page_title.empty?
			base_title
		else
			base_title + " | " + page_title
		end
	end

	#Twitter Text helper
	include Twitter::Autolink
 
  def twitter_text(text)
    text = auto_link(text)
    text ? text.html_safe : ''
  end
end
