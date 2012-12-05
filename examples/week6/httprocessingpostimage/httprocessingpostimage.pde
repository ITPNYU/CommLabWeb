//Can be downloaded at https://github.com/runemadsen/HTTProcessing
import httprocessing.*;

//not working yet

void setup() {
  File picture = new File("narhwal.jpeg");
  PostRequest post = new PostRequest("http://itp.nyu.edu/~zr279/sinatra/processingExamples/save_image");
  post.addFile("file", picture);
  post.send();
  println("Reponse Content: " + post.getContent());
  println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
}

void draw() {
}

