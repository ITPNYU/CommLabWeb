require 'sinatra'

# Main route  - this is the form is shown
get '/' do
  erb :form
end

# Second route  - this is the form is posted to
post '/multiparams' do
  @allnames = params[:names]
  erb :multiparams
end
