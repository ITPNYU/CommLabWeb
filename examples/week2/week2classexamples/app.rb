require 'sinatra'

# Main route  - this is the form is shown
get '/' do
  erb :form
end

get '/character' do
  
  erb :characterform
end

post '/name' do
  
  name = params[:character]
  #name is the ruby variable I am inputing 
  #if I want to display from my sinatra file
  "Hello #{name}"
  
end

get '/apple/:type' do
  #when bring a variable from app.rb to an erb use @variable sign. In your erb use this syntax <%=@variable%>
  @category = params[:type]
  
  erb :category
end

get '/yesno' do
  
  erb :yesno
end

post '/yesno' do
  
  response = params[:question]
  
  if response == "yes"
    #"The response was yes"
    erb :adventure
  elsif response == "no"
    "The response was no"
  else
    "Something didnt happen correctly"
  end
  
end

get '/check' do
  
  erb :check
end

post '/check' do
  #When a checkbox is not selected no param is sent.
  checkbox1 = params[:check1]
  checkbox2 = params[:check2]
  checkbox3 = params[:check3]


  
  if checkbox1 == "1"
    "We love ruby/sinatra"
  else
    "We hate ruby/sinatra"
  end
  
end













get '/adventure' do
  erb :adventure
end

get '/left' do
  
  erb :left
end

get '/pull' do
  
  erb :pull
end

get '/right' do
  
  erb :right
end





# Second route  - this is the form is posted to
get '/hello' do
  # params[:yourname] will be replaced with the value entered for 
  # the input with name 'yourname'  
  "Hello " + params[:yourname]
end
