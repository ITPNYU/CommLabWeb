require 'sinatra'
require 'dm-core'
require 'date'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Apartment
  include DataMapper::Resource

  property :id,   Serial
  property :address, String, :required => true
  property :neighborhood, String
  property :pets_allowed, Boolean, :default  => false
  property :sq_ft, Integer
end

DataMapper.finalize

### Routes for main pages
get '/' do
  # matches main route for the application, itp.nyu.edu/~irs221/sinatra/apt_listings/
  
  # Use these later in the erb file
  @availabilities = ''
  @total_postings = Apartment.count
  
  for entry in Apartment.all
    @availabilities += <<-HTML
      <p><a href='/~irs221/sinatra/apt_listings/apartment/#{entry.id}'>#{entry.id}. #{entry.address} #{entry.neighborhood}</a></p>
  HTML
  end
  
  # Show the html from views/index.erb
  erb :index
end

get '/new_post' do
  # matches itp.nyu.edu/~irs221/sinatra/apt_listings/new_post
  
  # Show the html from views/postlisting.erb
  erb :postlisting
end

get '/filter_big' do
  # matches itp.nyu.edu/~irs221/sinatra/apt_listings/filter_big
  
  # Use these later in the erb file
  @output = ""
  @title = "Filter by size"
  big_apartments = Apartment.all(:sq_ft.gte => 800)
  @total_postings = big_apartments.count
  
  for apt in big_apartments
    @output += <<-HTML
    <p><a href='/~irs221/sinatra/apt_listings/apartment/#{apt.id}'>#{apt.address}</a>: #{apt.sq_ft} square feet</p>
  HTML
  end
  
    # Show the html from views/default.erb
  erb :default
  
end

get '/filter_pets' do
  # matches itp.nyu.edu/~irs221/sinatra/apt_listings/filter_pets
  
  # Use these later in the erb file
  @output = ""
  @title = "Pets allowed"
  pet_apartments = Apartment.all(:pets_allowed => true)
  @total_postings = pet_apartments.count

  for apt in pet_apartments
    @output += <<-HTML
    <p><a href='/~irs221/sinatra/apt_listings/apartment/#{apt.id}'>#{apt.address}</a></p>
  HTML
  end
  
  # Show the html from views/default.erb
  erb :default
end

get '/filter_neighborhood' do
  # matches itp.nyu.edu/~irs221/sinatra/apt_listings/filter_neighborhood
  
  # Use these later in the erb file
  @output = ""
  @title = "Filter by neighborhood"
  loc_apartments = Apartment.all(:order => [:neighborhood.desc])
  @total_postings = loc_apartments.count
  
  for apt in loc_apartments
    @output += <<-HTML
    <p><a href='/~irs221/sinatra/apt_listings/apartment/#{apt.id}'>#{apt.address}</a>
    <a href='/~irs221/sinatra/apt_listings/neighborhood/#{apt.neighborhood}'>#{apt.neighborhood}</a></p>
  HTML
  end
  
  # Show the html from views/default.erb
  erb :default
end

get '/neighborhood/:name' do
  # matches itp.nyu.edu/~irs221/sinatra/apt_listings/neighborhood/Midtown
  
  # Use these later in the erb file
  @output = ""
  @title = params[:name]
  loc_apartments = Apartment.all(:neighborhood => params[:name])
  
  for apt in loc_apartments
    @output += <<-HTML
    <p><a href='/~irs221/sinatra/apt_listings/apartment/#{apt.id}'>#{apt.address}</a></p>
  HTML
  end
  
  # Show the html from views/default.erb
  erb :default
end

get '/apartment/:id' do
  # matches itp.nyu.edu/~irs221/sinatra/apt_listings/apartment/5
  apartment = Apartment.get(params[:id])
  
  # Use these later in the erb file
  @title = apartment.address
  @details = <<-HTML
    <p>#{apartment.neighborhood}</p>
    <p>Pets allowed? #{apartment.pets_allowed}</p>
    <p>Square feet: #{apartment.sq_ft}</p>
  HTML
  
  # Show the html from views/apartment.erb
  erb :apartment
end

### Routes for DataMapper actions
post '/save_info' do
  
  # Save the information from the form in the DataMapper object
  apt = Apartment.new
  
  apt.address = params[:address]
  apt.neighborhood = params[:neighborhood]
  
  if (params[:pets] == "true")
    apt.pets_allowed = true;
  end
  
  apt.sq_ft = Integer(params[:sqft])
  
  apt.save

  # Show the html from views/savedpost.erb
  erb :savedpost
end
