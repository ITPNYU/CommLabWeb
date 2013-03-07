require 'sinatra'
require 'dm-core'
require 'json'
require 'open-uri'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource
  property :id, Serial
  property :firstname, String
  property :age, Integer
end

DataMapper.finalize


# Main route  - this is the form is shown
get '/' do
  erb :form
end


post '/data' do
  
  p = Visitor.new
  p.firstname = params[:firstname]
  p.age = params[:age]

 
  #If any of the validations are not met, p.save will be false
  if p.save
    redirect to("http://itp.nyu.edu/~zr279/sinatra/jsonexample")
  else
    "You missed something!"
  end
  
end

get '/json' do
  
  allVisitors = Visitor.all
  jsonOutput = ""
  
  
  allVisitors.each_with_index do |visit, index|
    
    
    
    jsonOutput += '{ "name" : "' + visit.firstname + '", "age" : "' + visit.age.to_s  + '" }'
    
    if index < allVisitors.length-1
      
      jsonOutput += ','
      
    end
    
    
  end
  
  '{ "Visitors": [ ' + jsonOutput + ' ] }'
  
  
  
end

get '/parsejson' do
    
  web_contents  = open('http://itp.nyu.edu/~zr279/sinatra/jsonexample/json') {|f| f.read }
  
  @parseJson = JSON.parse(web_contents)
  
  # ie of simple parse ..... parseJson["Visitors"][0]["age"]
    
  erb :jsonOutput
  
  
end


