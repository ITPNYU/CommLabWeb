require 'sinatra'

get "/" do
  erb :form
end

get '/processingget' do
  
  '<html><body><div id="name">Zeven</div><div id="age">27</div></body></html>'
end

post '/processingpost' do
  
    name = params[:name]
    
    "Welcome #{name}"
    
end

post '/save_image' do
  
  @filename = params[:file][:filename]
  file = params[:file][:tempfile]

  File.open("./public/images/#{@filename}", 'wb') do |f|
    f.write(file.read)
  end
  
  erb :show_image
end