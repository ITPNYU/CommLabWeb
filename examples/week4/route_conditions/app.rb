require 'sinatra'

# Matched on Internet Explorer 6
get '/hello', :agent => /MSIE 6/ do
  "We do not support Internet Explorer 6. Please upgrade!"
end

# Matches Chrome
get '/hello', :agent => /Chrome/  do
  "You're using Chrome! Nice ;)"
end

# Matches everything else
get '/hello', :agent => /Firefox/ do
  "Hello! Firefox! #{params[:agent]}"
end

# Matches everything else
get '/hello' do
  "Hello! #{params[:agent]}"
end



# Define your own conditions
set(:probability) { |value| condition { rand <= value } }

get '/roll_dice', :probability => 0.9 do
  "You won!"
end

get '/roll_dice' do
  "Sorry, you lost."
end
