require 'twitter_search'

class SearchController < ApplicationController
  respond_to :html, :json
  def twitter
    # receives search parameters and returns html for query #
    send_query(params[:search]) if valid(params[:search])

    respond_to do |format|
      format.html
      format.json { render partial: "tweets.html" }
    end
  end

  private
  def send_query(query, number=30)
  	# sends query to twitter #
    client = TwitterSearch::Client.new('tweetersearch')
    @tweets =  client.query(:q => query, :rpp => number)
  end

  private
  def valid(query)
  	# validates input data, if blank #
    if query.blank?
        @error = 'Please provide input for search'
        return false
    end
    return true
  end
end
