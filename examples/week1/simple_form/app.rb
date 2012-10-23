require 'sinatra'

# Main route  - this is the form is shown
get '/' do
	erb :form
end

# Second route  - this is the form is posted to
get '/hello' do
	# params[:yourname] will be replaced with the value entered for 
  # the input with name 'yourname'  
  <<-HTML
    Hello #{params[:yourname]}
  HTML
end