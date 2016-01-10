class StaticPagesController < ApplicationController
  def home
  	@instagram = Instagram.user_recent_media("219769686", {:count => 4})
  end

  def contact
  	
  end
end
