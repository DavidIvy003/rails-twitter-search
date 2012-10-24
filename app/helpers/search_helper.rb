module SearchHelper
  def send_query(query, max_id=nil, page=nil, number=10)
  	# sends query to twitter #
    params = { q: query, rpp: number }
    params = params.merge( max_id: max_id ) if max_id
    params = params.merge( page: page ) if page
    
    client = TwitterSearch::Client.new('tweetersearch')
    @tweets =  client.query( params )
    @max_id = max_id || @tweets.count > 0 ? @tweets.first.id : nil
    @page = Integer(page || 1)
    return @tweets
  end

  def valid(query)
  	# validates input data, if blank #
    ! query.blank?
  end
end