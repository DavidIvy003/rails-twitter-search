require 'twitter_search'

class SearchController < ApplicationController
  respond_to :html, :json
  def twitter
    # receives search parameters and returns html for query #
    @query = params[:search]
    send_query(@query, params[:max_id], params[:page]) if valid(@query)
    @max_id = params[:max_id] || @tweets.first.id
    @page = Integer(params[:page] || 1)

    respond_to do |format|
      format.html
      format.json { render partial: "tweets.html" }
    end
  end
  include SearchHelper
end
