require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Person
  include DataMapper::Resource
  property :id,   Serial
  property :firstname, String
end

DataMapper.finalize

get "/form" do
  erb :form
end

post "/save" do
  
  # save this person with all the other people
  @p = Person.new
  @p.firstname = params[:firstname]
  @p.save
  
  # get all the people in a global variable
  @people = Person.all
  
  erb :save
end
