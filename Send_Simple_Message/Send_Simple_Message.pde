/**
 * Send Simple Message by Ad Spiers - 12 Feb 2014
 * Red and Green values taken from mouse position in Processing 
 * and sent to X-OSC led via OSCP5 and netP5
 * oscP5 website at http://www.sojamo.de/oscP5
 */
 
import oscP5.*;  // listen for messages with this
import netP5.*;  // send messages with this?

OscP5 oscP5;
NetAddress myRemoteLocation;  // message destination

void setup() {
  size(255,255);  // RGB integers are between 0-255, so our window is 255 in X and Y 
  frameRate(25);
  
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,9000);
  
  /* IP Address of the X-OSC */
  myRemoteLocation = new NetAddress("169.254.1.1",9000);
  
  // Draw the background colour wash
  for (int x = 0; x < width; x++) {    // for all X pixels
    for (int y = 0; y < width; y++) {   // for all Y pixels
      stroke(x,y,0);        // colour of pixel = pixel position
      point(x,y);                      // draw the pixel
    }
  }
}

void draw() {
  // nothing goes in here
}

// whenever the mouse is moved send an RGB value to the X-OSC Led
void mouseMoved() {

  // this the command to change the colour of the led
  OscMessage myMessage = new OscMessage("/led/rgb");

  // these are the RGB values appended as integers
  myMessage.add(mouseX);  // red corresponds to mouse X (0-255)
  myMessage.add(mouseY);  // green corresponds to mouse Y (00-255)
  myMessage.add(0);       // we aren't using blue here.
  
  /* send the message to X-OSC */
  oscP5.send(myMessage, myRemoteLocation); 
}


/* This handles incoming messages, we are not using this right now */
/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}
