require 'sinatra'
require 'dm-core'
require 'date'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :firstname, String, :required => true
  property :lastname, String
  property :catlover, Boolean, :default  => false
  property :petno, Integer
  property :time, DateTime
end

DataMapper.finalize

get '/' do
  <<-HTML
  <form action="http://itp.nyu.edu/~irs221/sinatra/dm_property_types/save_info" method="POST">
  
    <p><label>First Name:</label> <input type="text" name="fname" /></p>
    <p><label>Last Name:</label> <input type="text" name="lname" /></p>
  
    <p><label>Do you like cats?</label>
      Yes <input type="radio" name="catlover" value="true" />
      No <input type="radio" name="catlover" value="false" />
    </p>
  
    <p><label>How many pets do you have?</label> <input type="text" name="pets" /></p>
  
    <p><input type="submit" value="Go" /></p>
  </form>
  HTML
end

post '/save_info' do
  user = Visitor.new
  
  user.firstname = params[:fname]
  user.lastname = params[:lname]
  
  if (params[:catlover] == "true")
    user.catlover = true;
  end
  
  user.petno = Integer(params[:pets])
  user.time = DateTime.now
  
  user.save
  "User name saved. Take a look at <a href='/~irs221/sinatra/dm_property_types/all_entries'>all the entries</a>."
end

get '/all_entries' do
  output = ''
  
  for entry in Visitor.all
    output += <<-HTML
    <p>
      <p>Name: #{entry.firstname}, #{entry.lastname}</p>
      <p>Loves cats -> #{entry.catlover}</p>
      <p>Has #{entry.petno} pets </p>
      <p>When? #{entry.time.strftime('%a %d %b %Y')}</p>
      <p> ___________________ </p>
    </p>
  HTML
  end
  
  output
end
