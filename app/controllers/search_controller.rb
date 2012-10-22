require 'twitter_search'

class SearchController < ApplicationController
  def index
  	# receives search parameters and returns html for query #
    validate_and_send_query(params[:search])

    respond_to do |format|
        format.html # show.html.erb
        format.json
        format.js
    end
  end

  def preview
  	# receives search parameters and returns ajax data for query #
    validate_and_send_query(params[:search])
    render :partial => 'tweets', :content_type => 'text/html'
  end

  def send_query(query, number)
  	# sends query to twitter #
    client = TwitterSearch::Client.new('tweetersearch')
    @tweets =  client.query(:q => query, :rpp => number)
  end

  def valid(query)
  	# validates input data, if blank #
    if query.blank?
        @error = 'Please provide input for search'
        return false
    end
    return true
  end

  def validate_and_send_query(query)
  	# sends twitter query if input is valid #
    if valid(query)
        send_query(query, '10')
    end 
  end
end
