class StaticPagesController < ApplicationController
  def home
  	@instagram = Instagram.user_recent_media("219769686", {:count => 4})

  	client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "Zst4O4BnnpuU5eUmvFcqFaKnA"
		  config.consumer_secret     = "2UQvcwDRu9waVCSiVEG1I1Kquwl9DWCrLgfj3sil4PCkZCx7QA"
		  config.access_token        = "388513379-Tjp1mmifnaSR2GFSypvlyjV0ZfR1ASyeheeB9HcF"
		  config.access_token_secret = "9NGKpCfXUYGRHaYHD2B6ixWy0kK36p6Azebyt5FdxLZiQ"
		end

  	@tweets = client.user_timeline("Kaytal1", :count => 5)
  		respond_to do |format|
  			format.html # index.html.erb
  			format.json { render :json => @posts }
  		end
  end

  def contact
  	
  end
end
