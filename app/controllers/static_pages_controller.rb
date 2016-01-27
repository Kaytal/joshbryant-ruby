class StaticPagesController < ApplicationController
  def home
  	@instagram = Instagram.user_recent_media("219769686", {:count => 6})

  	client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV['twit_consumer_key']
		  config.consumer_secret     = ENV['twit_consumer_secret']
		  config.access_token        = ENV['twit_access_token']
		  config.access_token_secret = ENV['twit_access_token_secret']
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
