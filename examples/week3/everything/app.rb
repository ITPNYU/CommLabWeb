require 'sinatra'                                        
require 'dm-core'
# setting up DataMapper to store in db folder in a yaml file 
DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Visitor
  include DataMapper::Resource
  # unique id, required
  property :id,  Serial
  # optional properties you want to store                                
  property :firstname, String
  property :lastname,  String
  property :gender,    String
end     

# tells DataMapper we are finished setting up
DataMapper.finalize   

# storing the information        
post '/store_info' do
  # create a new Visitor class object
  user = Visitor.new
  # store various params (url or form)                                    
  user.firstname = params[:firstname] 
  user.lastname = params[:lastname]                                    
  user.gender = params[:gender]
  #save entries                                    
  user.save
  
  html_out ="<ul>"
  for user in Visitor.all
    # every time we go through the loop,
    # add a snippet that looks like: Barack, Obama;
    html_out += <<-HTML
<li>#{user.firstname}, #{user.lastname} </li>
HTML
  end
  
  html_out +="</ul>"
  
  <<-HTML
  User name #{params[:firstname]} #{params[:lastname]} saved.
  
  So far you've saved #{html_out}
  HTML
end

# reading back all the information we've saved 
get '/visitors' do
  # create a variable to keep track of the information
  html_out = ""
  # loop through all the entries in the yml file
  for user in Visitor.all
    # every time we go through the loop,
    # add a snippet that looks like: Barack, Obama;
    html_out += <<-HTML
#{user.firstname}, #{user.lastname};
HTML
  end
  # after we put all the names together, show the result
  html_out
end

# reading back a certain entry
get "/visitor/:id" do
  user = Visitor.get(params[:id])
  "#{user.firstname} #{user.lastname}"
end

# updating an entry
get "/update_visitor/:id" do
  user = Visitor.get(params[:id])
  user.update(:firstname => "First")
  "New name is #{user.firstname} #{user.lastname}"
end

# deleting an entry
get "/delete_visitor/:id" do
  user = Visitor.get(params[:id])
  user.destroy
  "User #{params[:id]} deleted!"
end

# deleting an entry
get "/delete_all" do
  for user in Visitor.all
    user.destroy
  end
  
  "Users deleted!"
end

get '/test' do
  output = ""
  for user in Visitor.all(:firstname.like => 'johann')
    output += "#{user.firstname};"
  end
  
  output
end
