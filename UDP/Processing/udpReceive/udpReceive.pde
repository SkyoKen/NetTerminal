import hypermedia.net.*;
import controlP5.*;

UDP udp;

final String IP = "";
final int PORT = 2222;

void setup() {
  udp = new UDP(this,53131);
  udp.listen( true );
}

void draw() {;}

void receive( byte[] data, String ip, int port ) {
  String message = new String( data );
  println( "receive: \""+message+"\" from "+ip+" on port "+port );
}
