require 'sinatra'

# Main route  - this is the form where we take the input
get '/' do
  <<-HTML
  This is an example of simple routes.
  Check out the <a href='/~irs221/sinatra/returns_last_line/first_route'>first route</a> or
  the <a href='/~irs221/sinatra/returns_last_line/second_route'>second route</a>
  HTML
end

# You can see this at http://itp.nyu.edu/~irs221/sinatra/returns_last_line/first_route
get '/first_route' do
  "I'm the first line. Do you see me?"
  "This is the first route!"
end

# You can see this at http://itp.nyu.edu/~irs221/sinatra/returns_last_line/second_route
get '/second_route' do
  "I'm the first line. Do you see me?"
  "This is the second route!"
end