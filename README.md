# Comm Lab Web

The goal of Comm Lab Web is to develop creative web applications. 

#Posting your HW

If you miss more then 1 assignment you will not pass!

* [Submit your HW here](https://docs.google.com/spreadsheet/viewform?formkey=dG1ZTHlUdlhQX21GMWlpdlFlcDI2X1E6MQ)



## Week 1: Hello, Sinatra

###  Readings For This Week

* [Intro to Sinatra](https://docs.google.com/document/pub?id=1Qvi_Lh0geVa6P2LZlxFWi52yezLFnnZi9T5OEJpyidk)  (up to “Hello Worlds: What is a route?)
* [Is HTML a programming language?](http://www.cs.tut.fi/~jkorpela/prog.html) 

### Introduction

* Introduction and [software](https://docs.google.com/document/d/1urC5jHRnkdJS79E_3Z6048yo8K_z6x1JKDBGeN8Eowc/edit)  we’ll use in this class
* Map of interaction: User to Client, over Network, to Server, to Datastore, and back.
* Web / HTTP
    * Basics of client/server/datastore interaction
    * Using the web to allow access to remote resources, to respond to multiple clients, to apply conditional logic, to persist data, to accumulate data.
* HTTP Requests
* Examples of clients

### HTML

* Intro to HTML
    * Tags that open and close
    * Mark up content
    * Nested tags
    * [Basic Html Example](https://github.com/zevenwolf/CommLabWeb/blob/master/examples/basic_html.html)

* Tags
    * `<html>, <title>, <body>, <em>, <strong>, <h1-h5>, <a>, <img>, <ol>, <ul>, <p>`
    * Introduce `<form>` and `<input>` types
        * [Example with many form inputs](https://github.com/zevenwolf/CommLabWeb/blob/master/examples/basic_form.html) 

### Dynamic HTML with Sinatra and HTML form

* Your Sinatra folder
* Simple Sinatra script
* [Simple HTML form example in Sinatra](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week1/simple_form) 

### Assignment

#### Part 1

##### Option 1: Etzy App
You've got a great idea for the next big thing: it's called Etzy, and it's a place to sell artwork online.
You want to drum up interest and get some visitor feedback, so you decide to create a signup form!

For this assignment you must create a page where a visitor can input his or her name and email, and some preferences.
We're not worried about doing anything with the form data right now, or even making it pretty. Just focus on getting the markup complete.

##### Requirements
The page should include the following:
* a heading for the name of the business
* a sentence describing what it does
* a text input for a name
* a text input for an email address
* a checkbox for receiving an email newsletter
* a dropdown menu for "How you heard about us" ("google", "from a friend", "online ad", etc.)
* a radio button group for choosing a role ("buyer", "seller", or "both")

You should also create a 3 page site with a Home (which can be your form) and 2 other links with text and image


##### Option 2: Making your own text Game! Create your character form:
* Name
* Small back story
* Dropdown menu for "Weapon choice" (“Sword”, “Ax”, “Wand”)
* A radio button group for choosing a role ("Male", "Female", or "Ambiguous")
* Check boxes “What to carry:” (“Potions”, “Food”, “etc”)

Most text adventures operate in the following: Your character enters a room and is able to investigate. Your investigations leads to consequences.
[Click on the link for an example](http://itp.nyu.edu/~zr279/textadventure/adventure.html) 

[Code](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/textadventure)

##### Reference
* Read [WHATWG: Forms](http://developers.whatwg.org/forms.html)
* If you're stuck, look at this [basic form example](https://github.com/zevenwolf/CommLabWeb/blob/master/examples/basic_form.html) for guidance.

#### Part 2
We will also start looking at Ruby and Sinatra this week too, so we can start building a backend for our signup form. 
* Complete levels 1 - 3 of the [Try Ruby](http://tryruby.org/levels/1/challenges/0) tutorial - *optional*
* Read [Intro to Sinatra](https://docs.google.com/document/pub?id=1Qvi_Lh0geVa6P2LZlxFWi52yezLFnnZi9T5OEJpyidk) to “Hello Worlds: What is a route?"

## Week 2: Basics of a Sinatra script

### Readings For This Week

Sinatra Up and Running, p. 15-21 (It’s not much, so please read it thoroughly)

### Review

* HTML basics
* Class Homework

### [Sinatra](http://goo.gl/ZLGyk) 


### Setting up a Sinatra app on the ITP server

1. Open Terminal (Putty for Windows)
2. run `ssh netid@stu.itp.nyu.edu`. Remember to put in your netid instead of “netid”
3. Type in your password when prompted
4. run `ruby /etc/new_sinatra_app.rb nameofapp`. Remember to replace “nameofapp” with the name of your application.
5. Go to your blank Sinatra app here (using your netid and the name of your app):[http://itp.nyu.edu/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [~](http://itp.nyu.edu/~netID/sinatra/nameofapp) [netID](http://itp.nyu.edu/~netID/sinatra/nameofapp) [/sinatra/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [nameofapp](http://itp.nyu.edu/~netID/sinatra/nameofapp) 


* Ruby
    * General (no types, etc)
    * Syntax
    * Variables
    * Functions
    * Loops
    * Gems
    
* [Week 2 Class Examples](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week2/week2classexamples)

### HTML Forms

* Render HTML with Sinatra
* Send to route in Sinatra

The components of a for have 2 parts, the form tag and the body

<form action="/form" method="POST">

    <input type="text" name="name" ></input>

</form>   

* Form Tag
    * Action - Route where the form data will be processed
    * Method - Which Http request protocol to use
    
* Body - Form inputs
    * type - The method of input
    * name - The reference for the value
    * value - The user input selection or text


### Intro to Sinatra

Sinatra works by declaring routes. Routes are the URLs associated with your application. A simple route looks like this:

    get '/home' do 
        "Code goes in here"
    end 

Think of routes as litte programs that are going to run when you you visit the link. The route is composed of 2 imporant parts the method and the link.

Methods include: GET, POST, DELETE, PUT, etc. After the method you declare the link. In class, we mostly use GET and POST. 

GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource

GET requests can be used in routes that:
    * Serve up content
    * Process form
        * Form data public
        * The form data is sent in the URL in name and value pairs

POST requests can be used in routes that:
    * Process form
        * Form data private
        * Information is sent in the HTTP message body


For more differences visit [click here](http://www.w3schools.com/tags/ref_httpmethods.asp).

What about the form data?

Sinatra uses a global variable called parameters. The syntax for parameters is params[:name]. The :name is the reference name pulled from the form. Parameters can also be pulled from a url route. When used in a route /home/:name , this can be referenced by params[:name]

This is an example for taking in a value from a form:

    post '/home' do 
        name = params[:name]
    end 

This is an example for taking in a value from a url

    get '/home/:name' do 
        name = params[:name]
    end 

When we want to output variables from sinatra from our route:

    post '/home' do 
        
        name = params[:name]
        "This is my name #{name}"

    end 

When we want to output variables from sinatra to our erb:

The @ symbol is use to signify that the variable can be accessed from the erb template 

app.rb

    post '/home' do 
        
        @name = params[:name]

        erb :name

    end 

name.erb
    
    <p><%=@name%></p>   


You can run ruby code in your erb.

name.erb
    <% name = "zeven" %>
    <p>My name is <%=name%></p>   


This will output the HTML code:

    <p>My name is zeven</p> 

The <%  %> escape characters are used to write ruby code:

    <% name = "zeven" %>

This will not output anything in your template

To output variables to your template:

The sinatra reads the = sign and understands to render the variable

    <%=variable%>



### Homework For Next Week

Create a new Sinatra application on the ITP Server. Create a GET “/form” route that returns an HTML form with a few different input types. Create a POST “/form” route that reads these parameters and sends back a dynamic HTML page. This HTML page should at least have an image that changes depending on the input from the form.


###Putting images into your app directory.

You need to make a folder called public. Inside of that make a folder called images and place your images there. Double click into your app folder. Right click and add new folder. Type public. Double click to go into the new public folder you created. Right click and add new folder called images. Put your images in there. You should put the full path to your file in the image src. It will look something like this: 
`<img src="http://itp.nyu.edu/~YOURNETID/sinatra/YOURAPP/public/images/penguin.jpeg"/>`

If your image does not appear there could be another issue with permissions. Right click on your public folder you just created and select info. Click on the permissions tab. Where it says unix permissions type 755 and click apply changes recursively. 



## Week 3: Basics of Datamapper

### Readings For This Week

[An Introduction to Datamapper](http://ruby.about.com/od/sinatra/a/datamapper.htm)  - (Skip “Installing” part)

### What is a database?

* Simplest model: a database can be a file
* Read and write to a file as a simple model of persistence
* YAML

### Datamapper

* Datamapper is a library that enables you to save to a database in Sinatra
* Setup Datamapper
* Write your Datamapper class
    * Properties: Serial, Boolean, String, Text, Float, Integer, Datetime,

### Setting up the Database

First you need to add the library:

require 'dm-core'

Second add the basic database setup:

DataMapper::setup(:default, {:adapter =>'yaml', :path => 'db'})

We are using a yaml database saved to the path db


### Setting up the Database Class

The Class is what Datamapper uses to create the database model

class BlogPost

  include DataMapper::Resource #This line makes sure Datamapper uses this class to build our database structure
  
  property :id, Serial #We always need a Serial property. This ensures every new data entry has a unique number attributed with it.
  property :title, String
  property :body, Text

end

### Acessing the Data

  Asking for entry based on the Serial property. This returns a single entry

  @entry = BlogPost.get(params[:id])

  To access the data you use the instance name @entry followed by a . and the name of the property you want to access i.e. @entry.title, will return the title of your current query

  Asking for all entries in the database. This returns an array of objects

  @allEntries = BlogPost.all

  To display the data in your erb you need to loop through an array:

    <%@allEntries.each do |content|%>
        <%=content.id%>
        </br>
        <%=content.title%>
        </br>
        <%=content.body%>
        </br>
    <%end%>


* [Datamapper Example](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week3/datamapperexample1)

Here are some more Datamapper Query types:

  Get a user by id
  #user = Visitor.get(1)

  Get first user with name "rune"
  #users = Visitor.first(:username => "rune")

  Get last user with name "rune"
  #user = Visitor.last(:name => "rune")

  Get all users with name "rune"
  #user = Visitor.all(:name => "rune")

  Find all users with age between 18 and 60
  #user = Visitor.all(:age.gt => 18, :age.lt => 60)

  # You can use all of these conditions
  # gt, greater than
  # lt, less than
  # gte, greater than or equal   
  # lte, less than or equal
  # not, not equal
  # eql, equal
  # like, like

  Order visitors by age (you also use .asc)
  #user = Visitor.all(:order => [ :age.desc ])

  Find the number of visitors in your database with age greater than 18
  #count = Visitor.count(:age.gt => 18)

  Find the youngest age in the database
  #min_age = Visitor.min(:age)

  Find the oldest age in the database
  #max_age = Visitor.max(:age)


### Using Datamapper with Forms

* Example of form + save
* [Returning User Example](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/returning_user) 
* [Advanced Returning User Example](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/advanced_returning_user) 
* [Company Structure Example](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/company_structure) 

### Homework For Next Week

Write a sinatra app that shows a user form, and on the POST request recognize whether the user is returning.

## Week 4: Advanced Sinatra

### Readings For This Week

Sinatra Up and Running, p. 21-30

### Creating a Blog in Sinatra

* [A full blog in Sinatra and Datamapper](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/blog) 

### Advanced routes

* Conditional programming
    * [Simple Route conditionals](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week2/route_conditionals) 
    * [Route Conditions](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week4/route_conditions) 

### Homework For Next Week

* Create a mini-website with a menu and a couple of pages. All HTML has to exist in .erb views, and some of the actual data has to be retrieved and outputted from Datamapper.
* Start planning your final project. Be prepared to talk about your idea next class.

## Week 5: Advanced Datamapper

### Readings For This Week

Look at the[Datamapper Documentation](http://datamapper.org/docs/) . See if you can find features that you can use.

### Final Project Discussion

What do you want to do? What is preventing you from doing it?

### Advanced Datamapper

[Class Example](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week5/week5spring13)


* More Datatypes
    * Serial - is your unique identifier
    * String - use when you want to save text
    * Boolean - true and false
    * Integer - numbers
    * DateTime - To save a Time object
     

* Datatype options
    * Required - property :firstname, String, :required => true
    * Default - property :catlover, Boolean, :default => false
    * Length - property :content, Text, :length => 0..500

[Birthday Registration Example](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week5/advancesearch)

[Example of all of these](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week5/advancedatamapper)

### Some hints about CSS

### Homework For Next Week

* Start developing your final project.
* [Example of a big final project](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week5/final_project_example) 

## Week 6: More Clients and Project Help

### [Image Upload](https://github.com/runemadsen/HTTProcessing)

### Processing

* loadStrings to your app
* Making calls from [HTTProcessing](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week6/imageupload) 
* Other file formats (XML and JSON)

* [Processing GET and Jsoup](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week6/httprocessingjsoupGet)
* [Processing POST](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week6/httprocessingpost)
* [Processing POST Image](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week6/httprocessingpostimage)
* [Processing POST Sinatra App](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week6/processingExamples)


### Ruby

Calling your site with a Ruby script on your machine

### APIs

If we have time, let’s use other people’s APIs.

## Week 7: Final Project Presentations

Let’s present your sites!
