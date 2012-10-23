require 'sinatra'

# Main route  - this is the form where we take the input
get '/' do
  <<-HTML
  This is an example of simple routes.
  Check out <a href='/~irs221/sinatra/url_params/route/1'>route 1</a> or
  <a href='/~irs221/sinatra/url_params/route/2'>route 2</a> or
  <a href='/~irs221/sinatra/url_params/route/4032467'>route 4032467</a>!
  HTML
end

get '/route/:id' do
  "This is route number #{params[:id]}!"
end
