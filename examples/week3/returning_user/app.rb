require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :name, String
end

DataMapper.finalize


get '/' do
  <<-HTML
  <form action="http://itp.nyu.edu/~irs221/sinatra/returning_user/save_info" method="POST">
    <p><label>First Name:</label> <input type="text" name="fname" /></p>
    <p><label>Last Name:</label> <input type="text" name="lname" /></p>
    <p><input type="submit" value="Go" /></p>
  </form>
  HTML
end

post '/save_info' do
  counter = 0
  output = ""
  
  for user in Visitor.all
    if (user.name == params[:fname])
      counter = counter + 1
    end
  end
  
  if (counter > 0)
     output += <<-HTML
      <p>Welcome back #{user.name}</p>
     HTML
  else
    output += <<-HTML
      <p>Welcome new user!</p>
    HTML
    
    new_user = Visitor.new
    new_user.name = params[:fname]
    new_user.save
  end
  
  output
end
