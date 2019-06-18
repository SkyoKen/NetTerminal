import processing.net.*;
Server server;
void setup() {
  server = new Server(this, 5555);
  println("start server at address: " + server.ip());
}
void draw() {
  Client c = server.available();
  if (c != null) {
    String s = c.readStringUntil('\n').trim();
    try {


      String[] data = s.split(",");
      if (data[0].equals("point")) {
        int x = parseInt(data[1]);
        int y = parseInt(data[2]);
        server.write(x + "," + y + '\n');
      }
    }
    catch(Exception e) {
    }
    finally {
      println("received:" + s);
    }
  }
}
void mouseClicked() {
  server.write("server.isClicked");
}
