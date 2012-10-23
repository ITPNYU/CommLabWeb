require 'sinatra'

# Main route  - this is the form where we take the input
get '/' do
  <<-HTML
  This is an example of simple routes.
  Check out this <a href='/~irs221/sinatra/same_route_twice/same_route'>route</a>
  HTML
end

get '/same_route' do
  "Same route #1"
end

get '/same_route' do
  "Same route #2"
end