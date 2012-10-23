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
* [Simple HTML form example with POST to Sinatra route](https://gist.github.com/3557046) 

### Homework For Next Week

Open up the simple_form.html document on your server in Komodo and add more input fields (and input types). Chang thee app.rb file so it outputs the fields in a way that you like.

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
* [Basic Sinatra App](https://gist.github.com/3557045) 
* [Routes](https://gist.github.com/3557050) 
* [Returning something](https://gist.github.com/3557052) 
* [Params](https://gist.github.com/3557054) 
    * GET request in URL params
    * POST request
* Conditional programming
    * [First route gets picked up](https://gist.github.com/3557059) 
    * [Route conditionals](https://gist.github.com/3557061) 

### HTML Forms

* Render HTML with Sinatra
* Send to route in Sinatra

### Setting up a Sinatra app on the ITP server

1. Open Terminal (Putty for Windows)
2. run `ssh[netid](mailto:netid@stu.itp.nyu.edu) [@stu.itp.nyu.edu](mailto:netid@stu.itp.nyu.edu) `. Remember to put in your netid instead of “netid”
3. Type in your password when prompted
4. run `ruby new_sinatra_app.rbnameofapp`. Remember to replace “nameofapp” with the name of your application.
5. Go to your blank Sinatra app here (using your netid and the name of your app):[http://itp.nyu.edu/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [~](http://itp.nyu.edu/~netID/sinatra/nameofapp) [netID](http://itp.nyu.edu/~netID/sinatra/nameofapp) [/sinatra/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [nameofapp](http://itp.nyu.edu/~netID/sinatra/nameofapp) 

### Homework For Next Week

Create a new Sinatra application on the ITP Server. Create a GET “/form” route that returns an HTML form with a few different input types. Create a POST “/form” route that reads these parameters and sends back a dynamic HTML page. This HTML page should at least have an image that changes depending on the input from the form.

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
* [Create](https://gist.github.com/3557063) 
* [Read](https://gist.github.com/3758285) 
* [Update](https://gist.github.com/3758294) 
* [Delete](https://gist.github.com/3758300) 
* [Find](https://gist.github.com/3758349) 
* [Example with everything](https://gist.github.com/3557066) 

### Using Datamapper with Forms

* Example of form + save
* [Returning User Example](https://gist.github.com/3557074) 
* [Advanced Returning User Example](https://gist.github.com/3557076) 
* [Company Structure Example](https://gist.github.com/3557068) 

### Homework For Next Week

Write a sinatra app that shows a user form, and on the POST request recognize whether the user is returning.

## Week 4: Advanced Sinatra

### Readings For This Week

Sinatra Up and Running, p. 21-30

### ERB Views

* [“views” folder](https://gist.github.com/3557073) 

### Creating a Blog in Sinatra

* [A full blog in Sinatra and Datamapper](https://gist.github.com/3797418) 

### Advanced routes

* :param in route
*  [Route Conditions](https://gist.github.com/3557070) 

### Homework For Next Week

* Create a mini-website with a menu and a couple of pages. All HTML has to exist in .erb views, and some of the actual data has to be retrieved and outputted from Datamapper.
* Start planning your final project. Be prepared to talk about your idea next class.

## Week 5: Advanced Datamapper

### Readings For This Week

Look at the[Datamapper Documentation](http://datamapper.org/docs/) . See if you can find features that you can use.

### Final Project Discussion

What do you want to do? What is preventing you from doing it?

### Advanced Datamapper

* [Birthday Registration Example](https://gist.github.com/3837833) 
* More Datatypes
    * Serial
    * String
    * Boolean
    * Integer
    * DateTime
    * [Example of all of these](https://gist.github.com/3557075) 
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
* [Example of a big final project](https://gist.github.com/3557078) 

## Week 6: More Clients and Project Help

### Image Upload

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
