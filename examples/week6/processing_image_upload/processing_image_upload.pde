import httprocessing.*;

public void setup() 
{
	size(400,400);
	smooth();

	PostRequest post = new PostRequest("http://itp.nyu.edu/~rsm347/sinatra/file_upload/save_image");
	post.addFile("file", "/Users/rmadsen/Projects/Classes/CommLabWeb/examples/week6/processing_image_upload/data/bruce.jpg");
	post.send();
	println("Reponse Content: " + post.getContent());
	println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
}