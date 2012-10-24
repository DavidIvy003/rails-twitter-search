require 'twitter_search'

module SearchHelper
  def send_query(query, max_id=nil, page=nil, number=10)
  	# sends query to twitter #
    params = { q: query, rpp: number }
    params = params.merge( max_id: max_id ) if max_id
    params = params.merge( page: page ) if page

    client = TwitterSearch::Client.new('tweetersearch')
    @tweets =  client.query( params )
    @max_id = max_id || @tweets.first.id if @tweets.count > 0
    @page = Integer( page || 1 )
    return @tweets
  end

  def valid(query)
  	# validates input data, if blank #
    ! query.blank?
  end
end