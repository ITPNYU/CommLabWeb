require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Employee
  include DataMapper::Resource
  
  property :id,        Serial
  property :fname,     String
  property :lname,     String
  property :position,  String
end

DataMapper.finalize

get '/' do 
  erb :form
end

post '/create_employee' do
  # Create a new instance of our DataMapper object that will store the data
  employee = Employee.new
  
  # Assign values to the DataMapper's properties using the values from the inputs in our form
  employee.fname = params[:fname]
  employee.lname = params[:lname]
  employee.position = params[:position]
  
  # Save the values we've just assigned
  employee.save
  
  @employees = Employee.all
  
  erb :create_employee
end

get '/engineers' do
  output = <<-HTML
    <html>
      <head>
        <title>Engineers</title>
        <link type="text/css" rel="stylesheet" href="/~irs221/sinatra/company/public/style.css"/>
      </head>
      <body>
  HTML

  # Loop through all the employees and only display the ones that have the "engineer" position
  for e in Employee.all
    if ((e.position == "engineer") || (e.position == "Engineer"))
    output += <<-HTML
      <p>First name: #{e.fname}, Last Name: #{e.lname}</p>
    HTML
    end
  end
  
  output += <<-HTML
    </body></html>
  HTML
  
  output
end

get '/designers' do
  # Declare a variable named "designers" and set it to an empty string
  designers = ""

  # Loop through all the employees and only display the ones that have the "designer" position
  for employee in Employee.all
    if ((employee.position == "designer") || (employee.position == "Designer"))
    designers += <<-HTML
      <p>First name: #{employee.fname}, Last Name: #{employee.lname}</p>
    HTML
    end
  end
  
  <<-HTML
    <html>
      <head>
        <title>Designers</title>
        <link type="text/css" rel="stylesheet" href="/~irs221/sinatra/company/public/style.css"/>
      </head>
      <body>
         #{designers}
      </body>
    </html>
  HTML
end

