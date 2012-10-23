require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :name, String
end

DataMapper.finalize

post '/first-visitor' do
  user = Visitor.first
  user.update(:name => params[:newname])
  "Users new name is #{user.name}"
end