require 'twitter_search'

class SearchController < ApplicationController
  respond_to :html, :json
  def twitter
    # receives search parameters and returns html for query #
    @query = params[:search]
    send_query(@query, params[:max_id], params[:page]) if valid(@query)

    respond_to do |format|
      format.html
      format.json { render partial: "tweets.html" }
    end
  end
  include SearchHelper
end
