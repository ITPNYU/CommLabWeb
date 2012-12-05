require 'sinatra'
require 'dm-core'
require 'dm-validations'
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
 erb :form
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
  
  uservalid = user.save
  if uservalid == true
  "User name saved. Take a look at <a href='/~zr279/sinatra/advancedatamapper/all_entries'>all the entries</a>."
else
  "User not saved! <a href='/~zr279/sinatra/advancedatamapper/'>Return Home</a>"
  end

end

get '/all_entries' do
 @visitors = Visitor.all
 
 erb :allentries
end