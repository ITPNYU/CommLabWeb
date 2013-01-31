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

* Tags
    * `<html>, <title>, <body>, <em>, <strong>, <h1-h5>, <a>, <img>, <ol>, <ul>, <p>`
    * Introduce `<form>` and `<input>` types
        * [Example with many form inputs](https://github.com/ITPNYU/CommLabWeb/blob/master/examples/basic_form.html) 

### Dynamic HTML with Sinatra and HTML form

* Your Sinatra folder
* Simple Sinatra script
* [Simple HTML form example in Sinatra](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week1/simple_form) 

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
    
* [Week 2 Class Examples](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week2/week2classexamples)

### HTML Forms

* Render HTML with Sinatra
* Send to route in Sinatra

### Setting up a Sinatra app on the ITP server

1. Open Terminal (Putty for Windows)
2. run `ssh netid@stu.itp.nyu.edu`. Remember to put in your netid instead of “netid”
3. Type in your password when prompted
4. run `ruby /etc/new_sinatra_app.rb nameofapp`. Remember to replace “nameofapp” with the name of your application.
5. Go to your blank Sinatra app here (using your netid and the name of your app):[http://itp.nyu.edu/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [~](http://itp.nyu.edu/~netID/sinatra/nameofapp) [netID](http://itp.nyu.edu/~netID/sinatra/nameofapp) [/sinatra/](http://itp.nyu.edu/~netID/sinatra/nameofapp) [nameofapp](http://itp.nyu.edu/~netID/sinatra/nameofapp) 

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

* [Datamapper Class Example](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week3/datamapperexample1)

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

* [Birthday Registration Example](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week5/advancesearch) 
* More Datatypes
    * Serial
    * String
    * Boolean
    * Integer
    * DateTime
    * [Example of all of these](https://github.com/zevenwolf/CommLabWeb/tree/master/examples/week5/advancedatamapper) 
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
