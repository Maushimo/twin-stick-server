import processing.net.*;
Server server;
ArrayList<Entity> entities = new ArrayList<Entity>();
void setup(){
  size(200, 200);
  server = new Server(this, 5204);
  entities.add(new Entity(23, 23, 10));
}

void draw(){
  for(Entity e : entities){
    if(e.changed){
      server.write("e:"+e.x+","+e.y);
      println("e:"+e.x+","+e.y);
    }
  }
}