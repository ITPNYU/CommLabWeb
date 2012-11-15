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
  erb :form
end

post '/save_info' do
  user = Visitor.first_or_new(:fname => params[:fname], :lname => params[:lname])
  user.save
  erb :saved
end

get '/all' do  
  @visitors = Visitor.all
  erb :all
end
