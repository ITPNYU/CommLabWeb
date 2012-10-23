require 'sinatra'

get '/' do
  erb :form
end

get '/conditional_greeting' do
  
  @image_url = ""
  
  if (params[:yourname] == "World")
    @image_url = "http://www.buddhanet.info/wbd/images/maps/WBD_world-map.jpg"
  elsif (params[:yourname] == "Flower")
    @image_url = "http://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/White_and_yellow_flower.JPG/250px-White_and_yellow_flower.JPG"
  elsif (params[:yourname] == "Ruxy" || params[:yourname] == "Cat")
    @image_url = "http://www.vectorsigma.co.uk/blog/wp-content/uploads/2011/07/cute_cat1.jpg"
  else
    @image_url = "http://tectabs.com/wp-content/uploads/2011/07/hello-1769.jpg"
  end

  erb :result

end