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
  include SearchHelper
end
