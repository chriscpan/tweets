class HomeController < ApplicationController

  def home
    # TweetStream.configure do |config|
    #   config.consumer_key       = Figaro.env.twitter_consumer_key
    #   config.consumer_secret    = Figaro.env.twitter_consumer_secret
    #   config.oauth_token        = Figaro.env.twitter_access_token
    #   config.oauth_token_secret = Figaro.env.twitter_access_secret
    #   config.auth_method        = :oauth
    # end
    client = Twitter::REST::Client.new do |config|
      config.consumer_key       = Figaro.env.twitter_consumer_key
      config.consumer_secret    = Figaro.env.twitter_consumer_secret
      config.oauth_token        = Figaro.env.twitter_access_token
      config.oauth_token_secret = Figaro.env.twitter_access_secret
    end

    @trends = client.trends(23424977)
  end
end
