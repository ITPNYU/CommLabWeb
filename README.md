# Comm Lab Web Syllabus Fall 2012# []() 
## Week 1: Hello, Sinatra
### []() Readings For This Week

1. [Intro to Sinatra](https://docs.google.com/document/pub?id=1Qvi_Lh0geVa6P2LZlxFWi52yezLFnnZi9T5OEJpyidk)  (up to “Hello Worlds: What is a route?)
2. [Is HTML a programming language?](http://www.cs.tut.fi/~jkorpela/prog.html) 

### []() Introduction

1. Introductions
2. Introduction and[ software](https://docs.google.com/document/d/1urC5jHRnkdJS79E_3Z6048yo8K_z6x1JKDBGeN8Eowc/edit)  we’ll use in this class
3. Map of interaction: User to Client, over Network, to Server, to Datastore, and back.
4. Web / HTTP


1. Basics of client/server/datastore interaction
2. Using the web to allow access to remote resources, to respond to multiple clients, to apply conditional logic, to persist data, to accumulate data.


1. HTTP Requests


1. Examples of clients

### []() HTML

1. Intro to HTML


1. Tags that open and close
2. Mark up content
3. Nested tags


1. Tags


1. `<html>, <title>, <body>, <em>, <strong>, <h1-h5>, <a>, <img>, <ol>, <ul>, <p>`
2. Introduce <form> and <input> types


1. [Simple Form Example](https://gist.github.com/3557042) 
2. [All Fields Form Example](https://gist.github.com/3557043) 

### []() Dynamic HTML with Sinatra and HTML form

1. Your Sinatra folder
2. Simple Sinatra script
3. [Simple HTML form example with POST to Sinatra route](https://gist.github.com/3557046) 

### []() Homework For Next Week

1. Open up the simple_form.html document on your server in Komodo and add more input fields (and input types). Chang thee app.rb file so it outputs the fields in a way that you like.

# []() Week 2: Basics of a Sinatra script
### []() Readings For This Week

1. Sinatra Up and Running, p. 15-21 (It’s not much, so please read it thoroughly)

### []() Review

1. HTML basics
2. Class Homework

### []() [Sinatra](http://goo.gl/ZLGyk) 

1. Ruby


1. General (no types, etc)
2. Syntax
3. Variables
4. Functions
5. Loops
6. Gems


1. [Basic Sinatra App](https://gist.github.com/3557045) 
2. [Routes](https://gist.github.com/3557050) 
3. [Returning something](https://gist.github.com/3557052) 
4. [Params](https://gist.github.com/3557054) 


1. GET request in URL params
2. POST request


1. Conditional programming


1. [First route gets picked up](https://gist.github.com/3557059) 
2. [Route conditionals](https://gist.github.com/3557061) 

### []() HTML Forms

1. Render HTML with Sinatra
2. Send to route in Sinatra

### []() Setting up a Sinatra app on the ITP server

1. Open Terminal (Putty for Windows)
2. run `ssh[netid](mailto:netid@stu.itp.nyu.edu) [@stu.itp.nyu.edu](mailto:netid@stu.itp.nyu.edu) `. Remember to put in your netid instead of “netid”
3. Type in your password when prompted
4. run `ruby new_sinatra_app.rbnameofapp`. Remember to replace “nameofapp” with the name of your application.
5. Go to your blank Sinatra app here (using your netid and the name of your app):[http://itp.nyu.edu/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [~](http://itp.nyu.edu/~netID/sinatra/nameofapp) [netID](http://itp.nyu.edu/~netID/sinatra/nameofapp) [/sinatra/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [nameofapp](http://itp.nyu.edu/~netID/sinatra/nameofapp) 

### []() Homework For Next Week

1. Create a new Sinatra application on the ITP Server. Create a GET “/form” route that returns an HTML form with a few different input types. Create a POST “/form” route that reads these parameters and sends back a dynamic HTML page. This HTML page should at least have an image that changes depending on the input from the form.

# []() Week 3: Basics of Datamapper
### []() Readings For This Week

1. [An Introduction to Datamapper](http://ruby.about.com/od/sinatra/a/datamapper.htm)  - (Skip “Installing” part)

### []() What is a database?

1. Simplest model: a database can be a file
2. Read and write to a file as a simple model of persistence
3. YAML

### []() Datamapper

1. Datamapper is a library that enables you to save to a database in Sinatra
2. Setup Datamapper
3. Write your Datamapper class


1. Properties: Serial, Boolean, String, Text, Float, Integer, Datetime,


1. [Create](https://gist.github.com/3557063) 
2. [Read](https://gist.github.com/3758285) 
3. [Update](https://gist.github.com/3758294) 
4. [Delete](https://gist.github.com/3758300) 
5. [Find](https://gist.github.com/3758349) 
6. [Example with everything](https://gist.github.com/3557066) 

### []() Using Datamapper with Forms

1. Example of form + save
2. [Returning User Example](https://gist.github.com/3557074) 
3. [Advanced Returning User Example](https://gist.github.com/3557076) 
4. [Company Structure Example](https://gist.github.com/3557068) 

### []() Homework For Next Week

1. Write a sinatra app that shows a user form, and on the POST request recognize whether the user is returning.

# []() Week 4: Advanced Sinatra
### []() Readings For This Week

1. Sinatra Up and Running, p. 21-30

### []() ERB Views

1. [“views” folder](https://gist.github.com/3557073) 





Creating a Blog in Sinatra
1. [A full blog in Sinatra and Datamapper](https://gist.github.com/3797418) 

### []() Advanced routes

1. :param in route


1. [Route Conditions](https://gist.github.com/3557070) 

### []() Homework For Next Week

1. Create a mini-website with a menu and a couple of pages. All HTML has to exist in .erb views, and some of the actual data has to be retrieved and outputted from Datamapper.
2. Start planning your final project. Be prepared to talk about your idea next class.

# []() Week 5: Advanced Datamapper
### []() Readings For This Week

1. Look at the[Datamapper Documentation](http://datamapper.org/docs/) . See if you can find features that you can use.



### []() Final Project Discussion

1. What do you want to do? What is preventing you from doing it?

### []() Advanced Datamapper

1. [Birthday Registration Example](https://gist.github.com/3837833) 
2. More Datatypes


1. Serial
2. String
3. Boolean
4. Integer
5. DateTime
6. [Example of all of these](https://gist.github.com/3557075) 


1. Datatype options


1. Required
2. Default
3. Length


1. Finding Records


1. first
2. all
3. first_or_new
4. Conditions (gt, lt, gte, lte, not, eql, like)
5. Ordering (desc, asc)
6. Counting





Some hints about CSS### []() Homework For Next Week

1. Start developing your final project.
2. [Example of a big final project](https://gist.github.com/3557078) 

# []() Week 6: More Clients and Project Help
### []() Image Upload
### []() Processing

1. loadStrings to your app
2. Making calls from[HTTProcessing](https://github.com/runemadsen/HTTProcessing) 
3. Other file formats (XML and JSON)

# []() Ruby

1. Calling your site with a Ruby script on your machine



### []() APIs

1. If we have time, let’s use other people’s APIs.

# []() Week 7: Final Project Presentations


Let’s present your sites!
