# A Twitter Search website built in Ruby on Rails

Access the Twitter Search API from your Ruby code.

## Demo

View the live demo here:
<a href="http://smashthemboxes.herokuapp.com/">http://smashthemboxes.herokuapp.com/</a>

## Installation
    git clone https://github.com/DavidIvy003/rails-twitter-search.git

## Requirement
App is heavily built off <a href="https://github.com/croaky/twitter-search">dancroak-twitter-search</a>
rails -> 3.2.8
ruby -> 1.9.3
bootstrap-sass -> 2.0.4
jquery-rails -> 2.0.2

## Search Operators

The following operator examples find tweets...

* <a href="http://search.twitter.com/search?q=twitter+search">:q => 'twitter search'</a> - containing both "twitter" and "search". This is the default operator. 
* <a href="http://search.twitter.com/search?q=%22happy+hour%22">:q => '<b>"</b>happy hour<b>"</b>'</a> - containing the exact phrase "happy hour".
* <a href="http://search.twitter.com/search?q=obama+OR+hillary">:q => 'obama <b>OR</b> hillary'</a> - containing either "obama" or "hillary" (or both).
* <a href="http://search.twitter.com/search?q=beer+-root">:q => 'beer <b>-</b>root'</a> - containing "beer" but not "root".
* <a href="http://search.twitter.com/search?q=%23haiku">:q => '<b>#</b>haiku</a>' - containing the hashtag "haiku".
* <a href="http://search.twitter.com/search?q=from%3Aalexiskold">:q => '<b>from:</b>alexiskold'</a> - sent from person "alexiskold".
* <a href="http://search.twitter.com/search?q=to%3Atechcrunch">:q => '<b>to:</b>techcrunch</a>' - sent to person "techcrunch".
* <a href="http://search.twitter.com/search?q=%40mashable">:q => '<b>@</b>mashable</a>' - referencing person "mashable".
* <a href="http://search.twitter.com/search?q=superhero+since%3A2008-05-01">:q => 'superhero <b>since:</b>2008-05-01'</a> - containing "superhero" and sent since date "2008-05-01" (year-month-day).
* <a href="http://search.twitter.com/search?q=ftw+until%3A2008-05-03">:q => 'ftw <b>until:</b>2008-05-03'</a> - containing "ftw" and sent up to date "2008-05-03".
* <a href="http://search.twitter.com/search?q=movie+-scary+%3A%29">:q => 'movie -scary <b>:)</b>'</a> - containing "movie", but not "scary", and with a positive attitude.
* <a href="http://search.twitter.com/search?q=flight+%3A%28">:q => 'flight <b>:(</b>'</a> - containing "flight" and with a negative attitude.
* <a href="http://search.twitter.com/search?q=traffic+%3F">:q => 'traffic <b>?</b>'</a> - containing "traffic" and asking a question.
* <a href="http://search.twitter.com/search?q=hilarious+filter%3Alinks">:q => 'hilarious <b>filter:links</b>'</a> - containing "hilarious" and linking to URLs.

* Searches are case-insenstive.
* Searching for a positive attitude :) returns tweets containing the text :), =), :D, and :-)

## Authors

David Ivy

## License

MIT License, same terms as Ruby.