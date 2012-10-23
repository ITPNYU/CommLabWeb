require 'sinatra'

# Main route  - this is the form where we take the input
get '/' do
  <<-HTML
  This is an example of simple routes.
  Check out the <a href='/~irs221/sinatra/simple_routes/first_route'>first route</a> or
  the <a href='/~irs221/sinatra/simple_routes/second_route'>second route</a>
  HTML
end

# You can see this at http://itp.nyu.edu/~irs221/sinatra/simple_routes/first_route
get '/first_route' do
  "This is the first route!"
end

# You can see this at http://itp.nyu.edu/~irs221/sinatra/simple_routes/second_route
get '/second_route' do
  "This is the second route!"
end