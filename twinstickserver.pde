import processing.net.*;
Server server;

void setup(){
  size(200, 200);
  server = new Server(this, 5204); 
}

void draw(){
  server.write("p:12,12");
}