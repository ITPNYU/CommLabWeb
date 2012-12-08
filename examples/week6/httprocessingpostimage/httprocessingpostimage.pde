//Can be downloaded at https://github.com/runemadsen/HTTProcessing
import httprocessing.*;

void setup(){
  size(400, 400);
  smooth();
  //Where you image is on your computer
  String img = "/Users/zevenwolf/Desktop/Dropbox/Code/processing/httprocessingpostimage/data/" + "narwhal.jpeg";
  
  PostRequest post = new PostRequest("http://itp.nyu.edu/~zr279/sinatra/processingExamples/save_image");
  post.addFile("file", img);
  post.send();
  println("Reponse Content: " + post.getContent());
  println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
}
void draw() {
}

