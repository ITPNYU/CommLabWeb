require 'sinatra'
require 'dm-core'
require 'dm-validations'
require 'date'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})


class Visitor
  include DataMapper::Resource
  property :id, Serial
  property :firstname, String, :required => true
  property :catlover, Boolean, :default => false
  property :petno, Integer
  property :time, DateTime
  
end

DataMapper.finalize

# Main route  - this is the form is shown
get '/' do
  @title = "Home"
  @first = Visitor.first()
  @last = Visitor.last()
  @petnumber = Visitor.all(:petno.gte => 3)
  erb :form
end

# Second route  - this is the form is posted to
post '/newvisitor' do
  
  p = Visitor.new
  p.firstname = params[:yourname]
  p.catlover = params[:catlover]
  p.petno = params[:petno]
  p.time = Time.now
  
  #If any of the validations are not met, p.save will be false
  if p.save
    redirect to("http://itp.nyu.edu/~zr279/sinatra/week5spring13")
  else
    "You missed something!"
  end
  
end
