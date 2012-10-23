require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource

  property :id,   Serial
  property :name, String
  property :age, Integer

end

DataMapper.finalize

get '/find-visitor' do
  
  user = Visitor.first

  # get a user by id
  user = Visitor.get(1)

  # get first user with name "rune"
  user = Visitor.first(:name => "rune")

  # get last user with name "rune"
  user = Visitor.last(:name => "rune")

  # get all users with name "rune"
  user = Visitor.all(:name => "rune")

  # Find all users with age between 18 and 60
  user = Visitor.all(:age.gt => 18, :age.lt => 60)

  # You can use all of these conditions
  # gt, greater than
  # lt, less than
  # gte, greater than or equal   
  # lte, less than or equal
  # not, not equal
  # eql, equal
  # like, like

  # order visitors by age (you also use .asc)
  user = Visitor.all(:order => [ :age.desc ])

  # find the number of visitors in your database with age greater than 18
  count = Visitor.count(:age.gt => 18)

  # find the youngest age in the database
  min_age = Visitor.min(:age)

  # find the oldest age in the database
  max_age = Visitor.max(:age)

  "User is #{user.name}"
end