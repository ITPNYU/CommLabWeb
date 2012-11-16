require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

#Create the class the Datamapper will base off of
class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :username, String
end

DataMapper.finalize

# Main route  - this is the form is shown
get '/' do
  erb :form
end

post '/username' do
  
  # create a new visitor
  user = Visitor.new
  user.username = params[:username]
  user.save

  # or you could have done it like this
  # user = Visitor.create(:name => params[:yourname])

  "User name saved."
end

get '/first-visitor' do
  user = Visitor.first
  "User name is #{user.username}"
end

get '/edit-visitor' do
  
  erb :edit
end

post '/edit-visitor' do
  user = Visitor.first
  user.update(:username => params[:username])
  "Users new name is #{user.username}"
end

get '/delete-first-visitor' do
  user = Visitor.first
  user.destroy
  "User was deleted"
end




get '/find' do
  user = Visitor.first

  # get a user by id
  #user = Visitor.get(1)

  # get first user with name "rune"
  #users = Visitor.first(:username => "rune")

  # get last user with name "rune"
  #user = Visitor.last(:name => "rune")

  # get all users with name "rune"
  #user = Visitor.all(:name => "rune")

  # Find all users with age between 18 and 60
  #user = Visitor.all(:age.gt => 18, :age.lt => 60)

  # You can use all of these conditions
  # gt, greater than
  # lt, less than
  # gte, greater than or equal   
  # lte, less than or equal
  # not, not equal
  # eql, equal
  # like, like

  # order visitors by age (you also use .asc)
  #user = Visitor.all(:order => [ :age.desc ])

  # find the number of visitors in your database with age greater than 18
  #count = Visitor.count(:age.gt => 18)

  # find the youngest age in the database
  #min_age = Visitor.min(:age)

  # find the oldest age in the database
  #max_age = Visitor.max(:age)

  "User is #{user.username}"
  
end



get '/all' do
  
  @userList = Visitor.all
  #Look here to look at how to itterate through the object array
  erb :all
  
end


# Remember that sinatra finds the best match of what you put in the url
get '/:name/home' do

"This is #{params[:name]}'s home page"

end

get '/:name/:cat' do
  
  name = params[:name]
  cat = params[:cat]
  
  
  "This is the Name: #{name} and the cat: #{cat}"
   
end



