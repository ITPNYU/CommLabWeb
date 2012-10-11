CommLabWeb
==========
Week 1: Hello, Sinatra

Readings For This Week


Intro to Sinatra (up to “Hello Worlds: What is a route?)
Is HTML a programming language?
Introduction


Introductions
Introduction and software we’ll use in this class
Map of interaction: User to Client, over Network, to Server, to Datastore, and back.
Web / HTTP
Basics of client/server/datastore interaction
Using the web to allow access to remote resources, to respond to multiple clients, to apply conditional logic, to persist data, to accumulate data.
HTTP Requests

Examples of clients
HTML


Intro to HTML
Tags that open and close
Mark up content 
Nested tags
Tags
<html>, <title>, <body>, <em>, <strong>, <h1-h5>, <a>, <img>, <ol>, <ul>, <p>
Introduce <form> and <input> types
Simple Form Example
All Fields Form Example
Dynamic HTML with Sinatra and HTML form


Your Sinatra folder
Simple Sinatra script
Simple HTML form example with POST to Sinatra route
Homework For Next Week


Open up the simple_form.html document on your server in Komodo and add more input fields (and input types). Chang thee app.rb file so it outputs the fields in a way that you like.
Week 2: Basics of a Sinatra script

Readings For This Week


Sinatra Up and Running, p. 15-21 (It’s not much, so please read it thoroughly)
Review


HTML basics
Class Homework
Sinatra


Ruby
General (no types, etc)
Syntax
Variables
Functions
Loops
Gems
Basic Sinatra App
Routes
Returning something
Params

GET request in URL params
POST request
Conditional programming
First route gets picked up
Route conditionals
HTML Forms


Render HTML with Sinatra
Send to route in Sinatra
Setting up a Sinatra app on the ITP server


Open Terminal (Putty for Windows)
run `ssh netid@stu.itp.nyu.edu`. Remember to put in your netid instead of “netid”
Type in your password when prompted
run `ruby new_sinatra_app.rb nameofapp`. Remember to replace “nameofapp” with the name of your application.
Go to your blank Sinatra app here (using your netid and the name of your app):
http://itp.nyu.edu/~netID/sinatra/nameofapp
Homework For Next Week


Create a new Sinatra application on the ITP Server. Create a GET “/form” route that returns an HTML form with a few different input types. Create a POST “/form” route that reads these parameters and sends back a dynamic HTML page. This HTML page should at least have an image that changes depending on the input from the form.
Week 3: Basics of Datamapper

Readings For This Week


An Introduction to Datamapper - (Skip “Installing” part)
What is a database?


Simplest model: a database can be a file
Read and write to a file as a simple model of persistence
YAML
Datamapper


Datamapper is a library that enables you to save to a database in Sinatra
Setup Datamapper
Write your Datamapper class
Properties: Serial, Boolean, String, Text, Float, Integer, Datetime, 
Create
Read
Update
Delete
Find
Example with everything
Using Datamapper with Forms


Example of form + save
Returning User Example
Advanced Returning User Example
Company Structure Example
Homework For Next Week


Write a sinatra app that shows a user form, and on the POST request recognize whether the user is returning.
Week 4: Advanced Sinatra

Readings For This Week


Sinatra Up and Running, p. 21-30
ERB Views


“views” folder

Creating a Blog in Sinatra
A full blog in Sinatra and Datamapper
Advanced routes


:param in route

Route Conditions
Homework For Next Week


Create a mini-website with a menu and a couple of pages. All HTML has to exist in .erb views, and some of the actual data has to be retrieved and outputted from Datamapper.
Start planning your final project. Be prepared to talk about your idea next class.
Week 5: Advanced Datamapper

Readings For This Week


Look at the Datamapper Documentation. See if you can find features that you can use.

Final Project Discussion


What do you want to do? What is preventing you from doing it?
Advanced Datamapper


Birthday Registration Example
More Datatypes
Serial
String
Boolean
Integer
DateTime
Example of all of these
Datatype options
Required
Default
Length
Finding Records
first
all
first_or_new
Conditions (gt, lt, gte, lte, not, eql, like)
Ordering (desc, asc)
Counting

Some hints about CSS
Homework For Next Week


Start developing your final project.
Example of a big final project
Week 6: More Clients and Project Help

Image Upload

Processing


loadStrings to your app
Making calls from HTTProcessing
Other file formats (XML and JSON)
Ruby


Calling your site with a Ruby script on your machine

APIs


If we have time, let’s use other people’s APIs.

Week 7: Final Project Presentations

Let’s present your sites!