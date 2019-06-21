
import hypermedia.net.*;
import controlP5.*;

UDP udp;
ControlP5 cp5;

final String IP = "255.255.255.255";
final int PORT =53131;
String msg = "test_messege";   //UDPで送るコマンド

void setup() {
  size(200, 200);

  cp5 = new ControlP5(this);
  udp = new UDP(this);

  ControlFont cf = new ControlFont(createFont("メイリオ",20));

  cp5.addButton("UDP_Msg")
    .setFont(cf)
    .setLabel("送信")
    .setPosition(50,50)
    .setSize(100,100);
}

void draw() {
  background(200);
}

void UDP_Msg(){
  udp.send(msg,IP,PORT);
  
}
