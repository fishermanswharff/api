class TweetsController < ApplicationController

  def index 
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
    end

    @jw_twitter = get_jw
    binding.pry

  end

  def get_jw
    @client.user('jasonwharff')
    
    # @client.search("to:justinbieber marry me", :result_type => "recent").take(3).collect do |tweet|
    #   "#{tweet.user.screen_name}: #{tweet.text}"
    # end
  end
  
end