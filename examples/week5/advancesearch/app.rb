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


post '/save' do
  
  p = Person.new
  p.name = params[:name]
  p.age = params[:age]
  p.email = params[:email]
  p.created_at = Time.now
  
  if p.save
    redirect "http://itp.nyu.edu/~zr279/sinatra/advancesearch/"
  else
    "IT DIDNT WORK"
  end
  
end

get '/stats' do
  @first = Person.first()
  @last = Person.last()
  @age20 = Person.all(:age.gte =>20, :age.lte => 29)
  
  "First visitor: #{@first.name}, Last Visitor: #{@last.name}, Visitors in 20s: #{@age20.length}"
end