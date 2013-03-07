require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource
  property :id, Serial
  property :firstname, String
end

DataMapper.finalize


# Main route  - this is the form is shown
get '/' do
  erb :form
end

get '/processingExample' do
  
  erb :processing
end

post '/processing' do
  
  #Looking at the pde for the code to do a jquery post into database
  p = Visitor.new
  p.firstname = params[:firstname]
  p.save
  

end
