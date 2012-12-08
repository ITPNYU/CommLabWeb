//Can be downloaded at https://github.com/runemadsen/HTTProcessing
import httprocessing.*;

//Download jsoup at jsoup.org. To install place in your code folder and drag the file from the folder to the processing ide.

void setup() {

  PostRequest post = new PostRequest("http://itp.nyu.edu/~zr279/sinatra/processingExamples/processingpost");
  post.addData("name", "Jorge");
  post.send();
  println("Reponse Content: " + post.getContent());
  println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
  
}

void draw() {
}

