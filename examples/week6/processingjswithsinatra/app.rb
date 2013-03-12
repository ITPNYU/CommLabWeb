require 'sinatra'
require 'dm-core'


get '/' do
  @color1 = "255"
  @color2 = "255"
  erb :processing
end

