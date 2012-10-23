require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :name, String
end

DataMapper.finalize

get '/first-visitor' do
  user = Visitor.first
  "User name is #{user.name}"
end