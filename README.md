# Comm Lab Web Syllabus Fall 2012

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

* Tags
    * `<html>, <title>, <body>, <em>, <strong>, <h1-h5>, <a>, <img>, <ol>, <ul>, <p>`
    * Introduce `<form>` and `<input>` types
        * [Example with many form inputs](https://github.com/ITPNYU/CommLabWeb/blob/master/examples/basic_form.html) 

### Dynamic HTML with Sinatra and HTML form

* Your Sinatra folder
* Simple Sinatra script
* [Simple HTML form example in Sinatra](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week1/simple_form) 

### Assignment

#### Part 1
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

##### Reference
* Read [WHATWG: Forms](http://developers.whatwg.org/forms.html)
* If you're stuck, look at this [basic form example](https://github.com/ckundo/CommLabWeb/blob/master/examples/basic_form.html) for guidance.

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

* Ruby
    * General (no types, etc)
    * Syntax
    * Variables
    * Functions
    * Loops
    * Gems
* [Basic Sinatra App](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week2/basic_sinatra_app) 
* [Routes](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week2/routes) 
* [Returning something](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week2/returning_something)
* [Returning something with views](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week4/views)
* [Params](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week2/params) 
    * GET request in URL params
    * POST request
    * Params in route
* [First route gets picked up](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week2/first_route) 


### HTML Forms

* Render HTML with Sinatra
* Send to route in Sinatra

### Setting up a Sinatra app on the ITP server

1. Open Terminal (Putty for Windows)
2. run `ssh netid@stu.itp.nyu.edu`. Remember to put in your netid instead of “netid”
3. Type in your password when prompted
4. run `ruby < <(curl -s http://runemadsen-2012.s3.amazonaws.com/new_sinatra_app.rb) - nameofapp`. Remember to replace “nameofapp” with the name of your application.
5. Go to your blank Sinatra app here (using your netid and the name of your app):[http://itp.nyu.edu/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [~](http://itp.nyu.edu/~netID/sinatra/nameofapp) [netID](http://itp.nyu.edu/~netID/sinatra/nameofapp) [/sinatra/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [nameofapp](http://itp.nyu.edu/~netID/sinatra/nameofapp) 

### Homework For Next Week

Create a new Sinatra application on the ITP Server. Create a GET “/form” route that returns an HTML form with a few different input types. Create a POST “/form” route that reads these parameters and sends back a dynamic HTML page.

## Week 3: Basics of Datamapper

### Readings For This Week

[An Introduction to Datamapper](http://ruby.about.com/od/sinatra/a/datamapper.htm)  - (Skip “Installing” part)

### What is a database?

* Simplest model: a database can be a file
* Read and write to a file as a simple model of persistence
* YAML

### Datamapper

* [Datamapper basics](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/basics)
* [Datamapper create](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/create)
* [Datamapper find](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/find)
* [Datamapper read](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/read)
* [Datamapper update](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/update)
* [Datamapper delete](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/delete)

### Homework For Next Week

For next week, you will use datamapper to save the information from the form you built last week. These are the steps you need to create:

* A GET route - this route returns a form for the user to fill out. You will need to:
    * Create the get route
    * Create a .erb file with the HTML for the form
    * This form will need an action attribute that points to your post route
* A POST route - this route saves the values from the form, retrieves all saved values, and inserts them in the HTML response. You will need to:
    * Create the post route
    * Copy/paste the basic datamapper setup code
    * Create a datamapper class, with at least the basic setup and a property (besides the id)
    * Create a new object from your class, and assign values from the params array
    * Call "save" on the object to save it to the database
    * Create a global variable and assign all objects from the database 
    * Create a .erb file with the HTML
    * Loop through this global variable in the erb file, and output all values of the objects

Again, all of this code is in the [example from the class](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week3/basics). You can use it for reference, but please write the assignment code yourself.


## Week 4: Advanced Sinatra

### Readings For This Week

Sinatra Up and Running, p. 21-30

### Creating a Blog in Sinatra

* [A full blog in Sinatra and Datamapper](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week4/full_blog) 

### Advanced routes

* Conditional programming
    * [Simple Route conditionals](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week2/route_conditionals) 
    * [Route Conditions](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week4/route_conditions) 

### Homework For Next Week

* Build a small web application that demonstrates the usage of:
    * get and post routes
    * .erb views 
    * datamapper class
    * saving data with datamapper
    * retrieving data with datamapper (.all or .get)
    * :colon in route
* The application should have:
    * A get route that shows all objects from DB
    * a get route to show form
    * a post route to save new object from form
    * a permalink get route to show each object
* Start planning your final project. Be prepared to talk about your idea next class.

## Week 5: Advanced Datamapper

### Readings For This Week

Look at the[Datamapper Documentation](http://datamapper.org/docs/) . See if you can find features that you can use.

### Final Project Discussion

What do you want to do? What is preventing you from doing it?

### Advanced Datamapper

* [Birthday Registration Example](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week5/birthdays) 
* More Datatypes
    * Serial
    * String
    * Boolean
    * Integer
    * DateTime
    * [Example of all of these](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week5/datatypes) 
* Datatype options
    * Required
    * Default
    * Length
* Finding Records
    * first
    * all
    * first_or_new
    * Conditions (gt, lt, gte, lte, not, eql, like)
    * Ordering (desc, asc)
    * Counting

### Some hints about CSS

### Homework For Next Week

* Start developing your final project.
* [Example of a big final project](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week5/final_project_example) 

## Week 6: More Clients and Project Help

### Image Upload

* [Image Upload Example](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week6/image_upload)
* [Image Upload From Processing Example](https://github.com/ITPNYU/CommLabWeb/tree/master/examples/week6/processing_image_upload)

### Processing

* loadStrings to your app
* Making calls from[HTTProcessing](https://github.com/runemadsen/HTTProcessing) 
* Other file formats (XML and JSON)

### Ruby

Calling your site with a Ruby script on your machine

### APIs

If we have time, let’s use other people’s APIs.

## Week 7: Final Project Presentations

Let’s present your sites!
