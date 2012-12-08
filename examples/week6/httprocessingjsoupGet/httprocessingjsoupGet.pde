//Can be downloaded at https://github.com/runemadsen/HTTProcessing
import httprocessing.*;

//Download jsoup at jsoup.org. To install place in your code folder and drag the jar file from the folder to the processing ide.

void setup() {

  GetRequest get = new GetRequest("http://itp.nyu.edu/~zr279/sinatra/processingExamples/processingget");
  get.send();
  //println("Reponse Content: " + get.getContent());
  //This gives the status message.
  //println("Reponse Content-Length Header: " + get.getHeader("Status"));


  String html = get.getContent();
  //Jsoup portion
  Document doc = Jsoup.parse(html);
  Element name = doc.getElementById("name");
  Element age = doc.getElementById("age");

  
  //Shows the body text
  //String texts = doc.body().text();
  //Shows the "a" select
  String nameText = name.text();
  String ageText = age.text();

  
  //println(texts);
  println(nameText);
  println(ageText);

 


  
}

void draw() {
}

