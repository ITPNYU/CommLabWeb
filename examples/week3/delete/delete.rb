require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :name, String
end

DataMapper.finalize

get '/delete-first-visitor' do
  user = Visitor.first
  user.destroy
  "User was deleted"
end