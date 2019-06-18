import processing.net.*;
String serverAddress = "localhost";
Client client;
ArrayList<PVector> points;
void setup() {
  points = new ArrayList<PVector>();
  client = new Client(this, serverAddress, 5555);
}
void draw() {
  background(0);
  fill(255);
  for (PVector p : points) {
    ellipse(p.x, p.y, 5, 5);
  }
}
void mouseClicked() {
  client.write("point,"+mouseX + "," + mouseY + '\n');
}

void clientEvent(Client c) {
  String s = c.readStringUntil('\n');
  if (s != null) {
    try {

      String[] data = s.trim().split(",");
      int x = parseInt(data[0]);
      int y = parseInt(data[1]);
      points.add(new PVector(x, y));
    }
    catch(Exception e) {
    }
    finally {
      print("received from server: " + s);
    }
  }
}
