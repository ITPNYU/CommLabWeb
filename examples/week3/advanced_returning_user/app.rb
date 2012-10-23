require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :fname, String
  property :lname, String
end

DataMapper.finalize


get '/' do
  <<-HTML
  <form action="http://itp.nyu.edu/~irs221/sinatra/returning_user_advanced/save_info" method="POST">
    <p><label>First Name:</label> <input type="text" name="fname" /></p>
    <p><label>Last Name:</label> <input type="text" name="lname" /></p>
    <p><input type="submit" value="Go" /></p>
  </form>
  HTML
end

post '/save_info' do
  user = Visitor.first_or_new(:fname => params[:fname], :lname => params[:lname])
  user.save
  "User saved. See <a href='/~irs221/sinatra/returning_user_advanced/all'>all</a>."
end

get '/all' do  
  output = ''
  
  for entry in Visitor.all
    output += <<-HTML
      <p>Name: #{entry.fname} #{entry.lname}</p>
      <p> ___________________ </p>
  HTML
  end
  
  output
end
