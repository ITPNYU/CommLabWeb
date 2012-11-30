require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class BlogPost
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :body, Text
end

DataMapper.finalize

get "/" do
  @nav = "Splash page"
  erb :front
end

get "/blog" do
  @nav = "Zeven's Blog"
  @posts = BlogPost.all
  erb :blog
end

get "/blog/new" do
  erb :blog_new
end

post "/blog/save" do
  myPost = BlogPost.new
  myPost.title = params[:title]
  myPost.body = params[:body]
  
  if(myPost.save)
    @message = "Your post was saved!"
  else
    @message = "Your post was NOT SAVED!!!!!!!"
  end
  
  erb :blog_save
end

get "/blog/admin" do
  @nav = "Admin"
  @posts = BlogPost.all
  erb :admin
end

get "/blog/:id/edit" do
  @nav = "You are on the edit username page"
  @updatePost = BlogPost.get(params[:id])
  @id = params[:id]
  erb :edit 
end

post "/blog/:id/edit" do
  updatePost = BlogPost.get(params[:id])
  updatePost.title = params[:title]
  updatePost.body = params[:body]
  
  if(updatePost.save)
    redirect to("http://itp.nyu.edu/~zr279/sinatra/blog/blog")
  else
    "Your post was NOT SAVED!!!!!!!"
  end
  
  
end

get "/blog/:id/delete" do
  
  deletePost = BlogPost.get(params[:id])
  
  
  deletePost.destroy
  
  redirect to("http://itp.nyu.edu/~zr279/sinatra/blog/blog/admin")
 
  
end
  
get "/blog/:id" do
  @post = BlogPost.get(params[:id])
  erb :post, :layout => false
end




