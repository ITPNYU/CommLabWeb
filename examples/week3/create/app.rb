require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :name, String
end

DataMapper.finalize

post '/store_name' do
  
  # create a new visitor
  user = Visitor.new
  user.name = params[:yourname]
  user.save

  # or you could have done it like this
  # user = Visitor.create(:name => params[:yourname])

  "User name saved."
end
