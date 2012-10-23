require 'sinatra'

@title = "Welcome!"

get '/' do
  @title = "Home"
  erb :index
end

get '/home' do
  @title = "Home"
  erb :index
end

get '/about' do
  @title = "About"
  erb :index
end

get '/details' do
  @title = "Details"
  erb :index
end

get '/work' do
  @title = "Work"
  erb :work
end

get '/work/:project' do
  @title = "Work"
  erb :work
end

get '/contact' do
  @title = "Contact"
  erb :index
end




