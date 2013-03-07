require 'sinatra'
require 'dm-core'
require 'dm-migrations'

DataMapper.setup(:default, {
 :adapter => 'mysql',
 :host => 'localhost',
 :username => 'netid' ,
 :password => 'Enteryour password here from sqlpw',
 :database => 'netid'})

class Test
  include DataMapper::Resource

  property :id, Serial # An auto-increment integer key
  property :name, String # A varchar type string, for short strings
end

# Automatically create the tables if they don't exist
DataMapper.auto_upgrade!
# Finish setup
DataMapper.finalize

# Main route  - this is the form is shown
get '/' do
  erb :form
end

post '/data' do
  
  p = Test.new
  p.name = params[:name]

 
  #If any of the validations are not met, p.save will be false
  if p.save
    redirect to("http://itp.nyu.edu/~zr279/sinatra/sqltest")
  else
    "You missed something!"
  end
  
end