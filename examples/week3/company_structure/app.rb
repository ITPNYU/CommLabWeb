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

# Main route  - this is the form where we take the input
get '/' do
  
  # The "action" sets the url this form will go to
  # The "method" sets the verb
  #  
  # The 'name' of the input translates into where the variable
  # ends up in the params in our other action
  # An input with name="fname" becomes params[:fname]
  # An input with name="position" becomes params[:position]
  # An input of type "submit" becomes a submit button for sending
  # in the form 

  <<-HTML
<form action="http://itp.nyu.edu/~irs221/sinatra/company/create_employee" method="POST">
   <p><label>First name:</label> <input type="text" name="fname" /></p>
   <p><label>Last name:</label> <input type="text" name="lname" /></p>
   <p><label>Position:</label> <input type="text" name="position" /></p>
   <p><input type="submit" value="create" /></p>
</form>
HTML
 
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
  
  output = ""
  
  # Loop through all our data and create HTML to display it
  # We will store each data value in the variable e every time it loops
  for e in Employee.all
    output += <<-HTML
      <p>First Name: #{e.fname}, Last Name: #{e.lname}, Position: #{e.position}</p>
    HTML
  end
  
  # Display the HTML
  output
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

