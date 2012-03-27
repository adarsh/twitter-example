class TweetsController < ApplicationController
  def index
    query = "##{params[:hashtag]}"
    @tweets = Twitter.search(query)

    render :json => @tweets
  end
end
