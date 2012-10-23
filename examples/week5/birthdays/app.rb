require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Person
  include DataMapper::Resource
  property :id,   Serial
  property :name, String
  property :email, String
  property :age, Integer
  property :created_at, DateTime
end

DataMapper.finalize

get "/" do
  @people = Person.all(:order => [:created_at.desc])
  erb :front
end

get '/person/:personid' do
  @person = Person.get(params[:personid])
  erb :person
end

get '/new' do
  erb :form
end

post '/save' do
  
  p = Person.new
  p.name = params[:name]
  p.age = params[:age]
  p.email = params[:email]
  p.created_at = Time.now
  
  if p.save
    redirect "http://itp.nyu.edu/~rsm347/sinatra/datamapper_advanced/"
  else
    "IT DIDNT WORK"
  end
  
end