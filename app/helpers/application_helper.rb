require 'twitter-text'
module ApplicationHelper
  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end
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

  def markdown(content)
  	renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
  	options = {
  		autolink: true,
  		no_intra_emphasis: true,
  		disable_indented_code_blocks: true,
  		fenced_code_blocks: true,
  		lax_html_blocks: true,
  		strikethrough: true,
  		superscript: true
  	}
  	Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
end
