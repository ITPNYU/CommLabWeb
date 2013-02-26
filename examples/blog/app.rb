require 'sinatra'
require 'dm-core'

#Setting up what kind of database and what directory to save it
#yaml is a simple database that saves in a text file you can read
DataMapper::setup(:default, {:adapter =>'yaml', :path => 'db'})

class BlogPost
  include DataMapper::Resource #This line makes sure Datamapper uses this class to build our database structure
  
  property :id, Serial #We always need a Serial property. This ensures every new data entry has a unique number attributed with it.
  property :title, String
  property :body, Text
end

get '/' do
  
  #Asking for all entries in the database
  
  @allEntries = BlogPost.all
  
  #Look at home.erb to see how to loop through an array
  erb :home
  
end

get '/:id' do
  
  #Asking for entry based on the Serial number
  @entry = BlogPost.get(params[:id])
  erb :singleEntry
end

get '/:id/edit' do
  
  @id = params[:id]
  
  erb :singleEdit
end

post '/:id/edit' do
  
  #Edit a new entry. @entryEdit is the current instance of BlogPost based on a query or search by the ID
  @entryEdit = BlogPost.get(params[:id])
  
  title = params[:title]
  body = params[:body]
  
  @entryEdit.title = title
  @entryEdit.body = body
  
  if (@entryEdit.save)
    redirect to("http://itp.nyu.edu/~zr279/sinatra/blogs/")
  else
    "It did not save"
  end
  
end

get '/entry' do
  
  erb :entry
end

post '/entry' do
  #Create a new entry. myEntry is the current instance of BlogPost
  myEntry = BlogPost.new
  #Add data from the form to new entry
  myEntry.title = params[:title]
  myEntry.body = params[:body]
  #Save to the Database. If it fails it will repond with "You entry was not saved!!!!!!!!!!!!"
  if(myEntry.save)
    "Your entry was saved!"
  else
    "You entry was not saved!!!!!!!!!!!!"
  end
  
end







