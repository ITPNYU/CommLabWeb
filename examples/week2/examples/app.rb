require 'sinatra'

# Main route  - this is the form is shown
get '/' do 
  "Hello"
end

get '/html' do
  
 "This is an example of simple routes. Check out the <a href='/~zr279/sinatra/example1/'>Home</a> </br> <p>Done</p>"

end

get '/form' do
  
  #@title = "This is passing a variable"
  erb :form 
  
end


post '/form' do
  
  var = params[:yourname]
  "This is my name #{var}"
  ##"This is my name" + params[:yourname]

end

get '/urlparams' do
  
  
  id = params[:id]
  name = params[:name]
  
  "This is the id: #{id} name: #{name}"

  
end

get '/name/:id' do
  
  "This is the id #{params[:id]}"
  
end

get '/name' do
  
  "Name"
  
end



get '/same_route' do
  "Same route #1"
end

get '/same_route' do
  "Same route #2"
end
