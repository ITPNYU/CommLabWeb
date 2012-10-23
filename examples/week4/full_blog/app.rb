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
  erb :front
end

get "/blog" do
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
  
get "/blog/:id" do
  @post = BlogPost.get(params[:id])
  erb :post
end