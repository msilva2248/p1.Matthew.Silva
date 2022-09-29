int floorDisplayX, floorDisplayY;  // Position of display
int floorDisplaySize = 200;  // Diameter of display

int enableKeyX, enableKeyY; // Position of enable key
int enableKeySize = 50; // Diameter of enable key

int fireFighterButtonX, fireFighterButtonY;  // Position of firefighter button
int fireFighterButtonSize = 60;  // Diameter of firefighter button

int lightKeyX, lightKeyY; // Position of light key
int lightKeySize = 50; // Diameter of light key

int fanKeyX, fanKeyY; // Position of fan key
int fanKeySize = 50; // Diameter of fan key

int fireOperationX, fireOperationY; // Position of operation display
int fireOperationSize = 250; // Diameter of operation display

int floorTwoButtonX, floorTwoButtonY; // Position of floor two button
int floorTwoButtonSize = 60; // Diameter of floor two button

int floorOneButtonX, floorOneButtonY; // Position of floor one button
int floorOneButtonSize = 60; // Diameter of floor one button

int doorOpenButtonX, doorOpenButtonY; // Position of open door button
int doorOpenButtonSize = 60; // Diameter of open door button

int doorClosedButtonX, doorClosedButtonY; // Position of close door button
int doorClosedButtonSize = 60; // Diameter of close door button

int alarmButtonX, alarmButtonY; // Position of alarm button
int alarmButtonSize = 60; // Diameter of alarm button

int runStopButtonX, runStopButtonY; // Position of run stop button
int runStopButtonSize = 60; // Diameter of run stop button

int emergencyX, emergencyY; // Position of emergency call
int emergencySize = 60; // Diameter of emergency call

int emergencyButtonX, emergencyButtonY; // Position of emergency button
int emergencyButtonSize = 25; // Diameter of emergency button

int speakerX, speakerY; // Position of speaker
int speakerSize = 100; // Diameter of speaker

int floorTwoButtonLightX, floorTwoButtonLightY; // Position of floor two button light
int floorTwoButtonLightSize = 15; // Diameter of floor two button light

int floorOneButtonLightX, floorOneButtonLightY; // Position of floor one button light
int floorOneButtonLightSize = 15; // Diameter of floor one button light

int doorOpenButtonLightX, doorOpenButtonLightY; // Position of open door button light
int doorOpenButtonLightSize = 15; // Diameter of open door button light

int doorClosedButtonLightX, doorClosedButtonLightY; // Position of close door button light
int doorClosedButtonLightSize = 15; // Diameter of close door button light

int alarmButtonLightX, alarmButtonLightY; // Position of alarm button light
int alarmButtonLightSize = 15; // Diameter of alarm button light

int runStopButtonLightX, runStopButtonLightY; // Position of run stop button light
int runStopButtonLightSize = 15; // Diameter of run stop button light

int emergencyLightX, emergencyLightY; // Position of emergency light
int emergencyLightSize = 15; // Diameter of emergency light

int floorTwoTextBoxX, floorTwoTextBoxY; // Position of floor two text box
int floorTwoTextBoxSize = 65; // Diameter of floor two text box

int floorOneTextBoxX, floorOneTextBoxY; // Position of floor one text box
int floorOneTextBoxSize = 65; // Diameter of floor one text box

int doorOpenTextBoxX, doorOpenTextBoxY; // Position of open door text box
int doorOpenTextBoxSize = 65; // Diameter of open door text box

int doorClosedTextBoxX, doorClosedTextBoxY; // Position of close door text box
int doorClosedTextBoxSize = 65; // Diameter of close door text box

int alarmButtonTextBoxX, alarmButtonTextBoxY; // Position of alarm text box
int alarmButtonTextBoxSize = 65; // Diameter of alarm text box

int runStopButtonTextBoxX, runStopButtonTextBoxY; // Position of run stop text box
int runStopButtonTextBoxSize = 65; // Diameter of run stop text box

color enableKeyColor, floorDisplayColor, fireFighterButtonColor, lightKeyColor, fanKeyColor, 
fireOperationColor, floorTwoButtonColor, floorTwoButtonLightColor, floorOneButtonColor, 
floorOneButtonLightColor, floorTwoTextBoxColor, floorOneTextBoxColor, doorOpenTextBoxColor, 
doorClosedTextBoxColor, alarmButtonTextBoxColor, runStopButtonTextBoxColor, doorOpenButtonColor, 
doorOpenButtonLightColor, doorClosedButtonColor, doorClosedButtonLightColor, alarmButtonColor, 
alarmButtonLightColor, runStopButtonColor, runStopButtonLightColor, emergencyColor, 
emergencyLightColor, emergencyButtonColor, speakerColor; // Color of buttons

color enableKeyHighlight, floorDisplayHighlight, fireFighterButtonHighlight, lightKeyHighlight, 
fanKeyHighlight, fireOperationHighlight, floorTwoButtonHighlight, floorTwoButtonLightHighlight, 
floorOneButtonHighlight, floorOneButtonLightHighlight, floorTwoTextBoxHighlight, floorOneTextBoxHighlight, 
doorOpenTextBoxHighlight, doorClosedTextBoxHighlight, alarmButtonTextBoxHighlight, runStopButtonTextBoxHighlight, 
doorOpenButtonHighlight, doorOpenButtonLightHighlight, doorClosedButtonHighlight, doorClosedButtonLightHighlight, 
alarmButtonHighlight, alarmButtonLightHighlight, runStopButtonHighlight, runStopButtonLightHighlight, 
emergencyHighlight, emergencyLightHighlight, emergencyButtonHighlight, speakerHighlight; // Highlight around buttons

boolean floorTwoButtonOver = false;
boolean floorOneButtonOver = false;
boolean doorOpenButtonOver = false;
boolean doorClosedButtonOver = false;
boolean alarmButtonOver = false;
boolean emergencyButtonOver = false;

boolean floorTwoButtonPressed = false;
boolean floorOneButtonPressed = false;
boolean doorOpenButtonPressed = false;
boolean doorClosedButtonPressed = false;
boolean alarmButtonPressed = false;
boolean emergencyButtonPressed = false;

String floorNumber;
String open;
String closed;

boolean change = false;

int savedTime;
int totalTime = 4000;

PImage imgOpen, imgClosed, imgBell, imgRunStop, imgKey, imgPhone, imgSpeaker, 
        imgHat, imgKey1;

void setup(){
  size(640, 990); // Size of window
  
  floorNumber = "1";
  open = "Opening...";
  closed = ("Closing...");
  
  imgOpen = loadImage("open.png");
  imgClosed = loadImage("closed.png");
  imgBell = loadImage("bell.png");
  imgRunStop = loadImage("runstop.png");
  imgKey = loadImage("key.png");
  imgPhone = loadImage("phone.png");
  imgSpeaker = loadImage("speaker.png");
  imgHat = loadImage("hat.png");
  imgKey1 = loadImage("key1.png");
  
  // Set colors and highlights
  
  floorDisplayColor = color(0);
  floorDisplayHighlight = color(51);
  
  enableKeyColor = color(205);
  enableKeyHighlight = color(0);
  
  fireFighterButtonColor = color(255);
  fireFighterButtonHighlight = color(255);
  
  lightKeyColor = color(205);
  lightKeyHighlight = color(0);
  
  fanKeyColor = color(205);
  fanKeyHighlight = color(0);
  
  fireOperationColor = color(185);
  fireOperationHighlight = color(0);
  
  floorTwoButtonColor = color(205);
  floorTwoButtonHighlight = color(0);
  
  floorTwoButtonLightColor = color(205);
  floorTwoButtonLightHighlight = color(0);
  
  floorOneButtonColor = color(205);
  floorOneButtonHighlight = color(0);
  
  floorOneButtonLightColor = color(205);
  floorOneButtonLightHighlight = color(0);
  
  doorOpenButtonColor = color(205);
  doorOpenButtonHighlight = color(0);
  
  doorOpenButtonLightColor = color(205);
  doorOpenButtonLightHighlight = color(0);
  
  doorClosedButtonColor = color(205);
  doorClosedButtonHighlight = color(0);
  
  doorClosedButtonLightColor = color(205);
  doorClosedButtonLightHighlight = color(0);
  
  alarmButtonColor = color(205);
  alarmButtonHighlight = color(255);
  
  alarmButtonLightColor = color(205);
  alarmButtonLightHighlight = color(205);
  
  runStopButtonColor = color(205);
  runStopButtonHighlight = color(255);
  
  runStopButtonLightColor = color(205);
  runStopButtonLightHighlight = color(205);
  
  emergencyColor = color(0);
  emergencyHighlight = color(0);
  
  emergencyLightColor = color(205);
  emergencyLightHighlight = color(0);
  
  emergencyButtonColor = color(0);
  emergencyButtonHighlight = color(255);
  
  speakerColor = color(255);
  speakerHighlight = color(255);
  
  floorTwoTextBoxColor = color(205);
  floorTwoTextBoxHighlight = color(0);
  
  floorOneTextBoxColor = color(205);
  floorOneTextBoxHighlight = color(0);
  
  doorOpenTextBoxColor = color(205);
  doorOpenTextBoxHighlight = color(0);
  
  doorClosedTextBoxColor = color(205);
  doorClosedTextBoxHighlight = color(0);
  
  alarmButtonTextBoxColor = color(205);
  alarmButtonTextBoxHighlight = color(0);
  
  runStopButtonTextBoxColor = color(205);
  runStopButtonTextBoxHighlight = color(0);
  
  // Set positions of buttons
  
  floorDisplayX = 220;
  floorDisplayY = 50;
  
  enableKeyX = 70;
  enableKeyY = 220;
  
  fireFighterButtonX = 230;
  fireFighterButtonY = 220;
  
  lightKeyX = 390;
  lightKeyY = 220;
  
  fanKeyX = 550;
  fanKeyY = 220;
  
  fireOperationX = 190;
  fireOperationY = 320;
  
  floorTwoButtonX = 420;
  floorTwoButtonY= 530;
  
  floorTwoButtonLightX = 420;
  floorTwoButtonLightY = 530;
  
  floorOneButtonX = 275;
  floorOneButtonY= 530;
  
  floorOneButtonLightX = 275;
  floorOneButtonLightY = 530;
  
  doorOpenButtonX = 275;
  doorOpenButtonY= 630;
  
  doorOpenButtonLightX = 275;
  doorOpenButtonLightY = 630;
  
  doorClosedButtonX = 420;
  doorClosedButtonY= 630;
  
  doorClosedButtonLightX = 420;
  doorClosedButtonLightY = 630;
  
  alarmButtonX = 275;
  alarmButtonY = 730;
  
  alarmButtonLightX = 275;
  alarmButtonLightY = 730;
  
  runStopButtonX = 420;
  runStopButtonY = 730;
  
  runStopButtonLightX = 420;
  runStopButtonLightY = 730;
  
  emergencyX = 60;
  emergencyY = 840;
  
  emergencyLightX = 160;
  emergencyLightY = 850;
  
  emergencyButtonX = 160;
  emergencyButtonY = 930;
  
  speakerX = 260;
  speakerY = 845;
  
  floorTwoTextBoxX = 320;
  floorTwoTextBoxY = 498;
  
  floorOneTextBoxX = 176;
  floorOneTextBoxY = 498;
  
  doorOpenTextBoxX = 176;
  doorOpenTextBoxY = 598;
  
  doorClosedTextBoxX = 320;
  doorClosedTextBoxY = 598;
  
  alarmButtonTextBoxX = 176;
  alarmButtonTextBoxY = 698;
  
  runStopButtonTextBoxX = 320;
  runStopButtonTextBoxY = 698;
  
  background(185);
}

void draw(){
  if(change){
    delay(1000);
    change = false;
  }
  // Keep track of mouse
  update(mouseX, mouseY);
   
  // Fill and show display box
  fill(floorDisplayHighlight);
  fill(floorDisplayColor);
  strokeWeight(2);
  stroke(255);
  rect(floorDisplayX, floorDisplayY, floorDisplaySize, floorDisplaySize/2);
  textSize(60);
  fill(255);
  text(floorNumber, 380, 120);
  
  // Fill and show enable button
  fill(enableKeyHighlight);
  fill(enableKeyColor);
  // Create stroke style separate from display to use for enable-fan buttons
  pushStyle();
  strokeWeight(10); // define size of stroke
  stroke(0);
  ellipse(enableKeyX, enableKeyY, enableKeySize, enableKeySize);
  imgKey1.resize(100, 100);
  image(imgKey1, 21, 170);
  
  ellipse(lightKeyX, lightKeyY, lightKeySize, lightKeySize);
  imgKey1.resize(100, 100);
  image(imgKey1, 340, 170);
  
  ellipse(fanKeyX, fanKeyY, fanKeySize, fanKeySize);
  imgKey1.resize(100, 100);
  image(imgKey1, 500, 170);
  
  popStyle();
  
  // Fill and show firefighter button
  fill(fireFighterButtonColor);
  fill(fireFighterButtonHighlight);
  // Create different style without stroke, separate from other buttons
  pushStyle();
  ellipse(fireFighterButtonX, fireFighterButtonY, fireFighterButtonSize, fireFighterButtonSize);
  imgHat.resize(40, 40);
  image(imgHat, 212, 197);
  popStyle();
  
  // Fill and show operation display
  fill(fireOperationHighlight);
  fill(fireOperationColor);
  // Create different style
  pushStyle();
  strokeWeight(5);
  stroke(0);
  rect(fireOperationX, fireOperationY, fireOperationSize, fireOperationSize/2);
  textSize(15);
  fill(255, 0, 0);
  text("FIREFIGHTERS OPERATION", 228, 365);
  popStyle();
  
  // Fill and show floor two text box
  fill(floorTwoTextBoxHighlight);
  fill(floorTwoTextBoxColor);
  // Create different style
  pushStyle();
  strokeWeight(4);
  stroke(0);
  rect(floorTwoTextBoxX, floorTwoTextBoxY, floorTwoTextBoxSize*2, floorTwoTextBoxSize, 50);
  popStyle();
  
  textSize(50);
  fill(0);
  text("2", 350, 545);
  
  // Fill and show floor one text box
  fill(floorOneTextBoxHighlight);
  fill(floorOneTextBoxColor);
  // Create different style
  pushStyle();
  strokeWeight(4);
  stroke(0);
  rect(floorOneTextBoxX, floorOneTextBoxY, floorOneTextBoxSize*2, floorOneTextBoxSize, 50);
  popStyle();
  
  textSize(50);
  fill(0);
  text("1", 205, 545);
  
  // Fill and show door open text box
  fill(doorOpenTextBoxHighlight);
  fill(0, 0, 0, 0);
  // Create different style
  pushStyle();
  strokeWeight(4);
  stroke(0);
  rect(doorOpenTextBoxX, doorOpenTextBoxY, doorOpenTextBoxSize*2, doorOpenTextBoxSize, 50);
  imgOpen.resize(60, 60);
  image(imgOpen, 185, 600);
  popStyle();
  
  // Fill and show door closed text box
  fill(doorOpenTextBoxHighlight);
  fill(0, 0, 0, 0);
  // Create different style
  pushStyle();
  strokeWeight(4);
  stroke(0);
  rect(doorClosedTextBoxX, doorClosedTextBoxY, doorClosedTextBoxSize*2, doorClosedTextBoxSize, 50);
  imgClosed.resize(50, 50);
  image(imgClosed, 330, 607);
  popStyle();
  
  // Fill and show alarm text box
  fill(alarmButtonTextBoxHighlight);
  fill(0, 0, 0, 0);
  // Create different style
  pushStyle();
  strokeWeight(4);
  stroke(0);
  rect(alarmButtonTextBoxX, alarmButtonTextBoxY, alarmButtonTextBoxSize*2, alarmButtonTextBoxSize, 50);
  imgBell.resize(60, 60);
  image(imgBell, 185, 700);
  popStyle();
  
  // Fill and show run stop text box
  fill(runStopButtonTextBoxHighlight);
  fill(0, 0, 0, 0);
  // Create different style
  pushStyle();
  strokeWeight(4);
  stroke(0);
  rect(runStopButtonTextBoxX, runStopButtonTextBoxY, runStopButtonTextBoxSize*2, runStopButtonTextBoxSize, 50);
  imgRunStop.resize(30, 30);
  image(imgRunStop, 325, 713);
  textSize(15);
  fill(0);
  text("Run", 355, 722);
  text("Stop", 355, 737);
  popStyle();
  
  stroke(0);
  
  // Fill and show buttons
  fill(floorTwoButtonHighlight);
  fill(floorTwoButtonColor);
  
  pushStyle();
  strokeWeight(5);
  ellipse(floorOneButtonX, floorOneButtonY, floorOneButtonSize, floorOneButtonSize);
  if(floorOneButtonPressed){
    alarmButtonPressed = false;
    if(floorNumber != "1"){
      textSize(60);
      fill(255);
      floorNumber = "1";
      text(floorNumber, 380, 120);
    }
    change = true;
    floorOneButtonPressed = false;
  }
  popStyle();
  
  pushStyle();
  strokeWeight(5);
  ellipse(floorTwoButtonX, floorTwoButtonY, floorTwoButtonSize, floorTwoButtonSize);
  if(floorTwoButtonPressed){
    alarmButtonPressed = false;
    if(floorNumber != "2"){
      textSize(60);
      fill(255);
      floorNumber = "2";
      text(floorNumber, 380, 120);
    }
    change = true;
    floorTwoButtonPressed = false;
  }
  popStyle();
  
  pushStyle();
  strokeWeight(5);
  ellipse(doorOpenButtonX, doorOpenButtonY, doorOpenButtonSize, doorOpenButtonSize);
  if(doorOpenButtonPressed){
      alarmButtonPressed = false;
      textSize(30);
      fill(255);
      text(open, 240, 120);
      change = true;
      doorOpenButtonPressed = false;
  }
  popStyle();
  
  pushStyle();
  strokeWeight(5);
  ellipse(doorClosedButtonX, doorClosedButtonY, doorClosedButtonSize, doorClosedButtonSize);
  if(doorClosedButtonPressed){
      alarmButtonPressed = false;
      textSize(30);
      fill(255);
      text(closed, 240, 120);
      change = true;
      doorClosedButtonPressed = false;
  }
  popStyle();
  
  pushStyle();
  strokeWeight(5);
  ellipse(alarmButtonX, alarmButtonY, alarmButtonSize, alarmButtonSize);
  fill(0);
  if(alarmButtonPressed){
    int passedTime = millis() - savedTime;
    if(passedTime >= 215){
      savedTime = millis();
      fill(255, 0, 0);
    }
    rect(floorDisplayX, floorDisplayY, floorDisplaySize, floorDisplaySize/2);
    
    change = true;
    alarmButtonPressed = true;
  }
  popStyle();
  
  pushStyle();
  //ellipse(doorOpenButtonX, doorOpenButtonY, doorOpenButtonSize, doorOpenButtonSize);
  //ellipse(doorClosedButtonX, doorClosedButtonY, doorClosedButtonSize, doorClosedButtonSize);
  //ellipse(alarmButtonX, alarmButtonY, alarmButtonSize, alarmButtonSize);
  ellipse(runStopButtonX, runStopButtonY, runStopButtonSize, runStopButtonSize);
  imgKey.resize(67, 67);
  image(imgKey, 387, 697);
  popStyle();
  
  pushStyle();
  rect(emergencyX, emergencyY, emergencySize*1.3, emergencySize*1.8);
  textSize(23);
  fill(255);
  text("Emergency Phone", 55, 825);
  imgPhone.resize(75, 75);
  image(imgPhone, 63, 855);
  popStyle();
  
  pushStyle();
  fill(emergencyButtonHighlight);
  fill(emergencyButtonColor);
  stroke(255);
  strokeWeight(1);
  ellipse(emergencyButtonX, emergencyButtonY, emergencyButtonSize, emergencyButtonSize);
  textSize(15);
  fill(255);
  text("Light indicates help is coming", 55, 965);
  popStyle();
  
  pushStyle();
  fill(speakerHighlight);
  fill(speakerColor);
  stroke(0);
  strokeWeight(8);
  rect(speakerX, speakerY, speakerSize, speakerSize);
  imgSpeaker.resize(100, 100);
  image(imgSpeaker, 261, 845);
  popStyle();
  
  stroke(0);
  
  // Fill and show floor two light
  fill(floorTwoButtonLightHighlight);
  fill(floorTwoButtonLightColor);
  ellipse(floorTwoButtonLightX, floorTwoButtonLightY, floorTwoButtonLightSize, floorTwoButtonLightSize);
  
  // Fill and show floor one light
  fill(floorOneButtonLightHighlight);
  fill(floorOneButtonLightColor);
  ellipse(floorOneButtonLightX, floorOneButtonLightY, floorOneButtonLightSize, floorOneButtonLightSize);
  
  // Fill and show door open light
  fill(doorOpenButtonLightHighlight);
  fill(doorOpenButtonLightColor);
  ellipse(doorOpenButtonLightX, doorOpenButtonLightY, doorOpenButtonLightSize, doorOpenButtonLightSize);
  
  // Fill and show door closed light
  fill(doorClosedButtonLightHighlight);
  fill(doorClosedButtonLightColor);
  ellipse(doorClosedButtonLightX, doorClosedButtonLightY, doorClosedButtonLightSize, doorClosedButtonLightSize);
  
  // Fill and show alarm light
  fill(alarmButtonLightHighlight);
  fill(alarmButtonLightColor);
  ellipse(alarmButtonLightX, alarmButtonLightY, alarmButtonLightSize, alarmButtonLightSize);
  
  // Fill and show emergency light
  fill(emergencyLightHighlight);
  fill(emergencyLightColor);
  ellipse(emergencyLightX, emergencyLightY, emergencyLightSize, emergencyLightSize);
  
  int passedTime = millis() - savedTime;
  if(passedTime > totalTime){
    floorOneButtonLightColor = color(205);
    floorTwoButtonLightColor = color(205);
    doorOpenButtonLightColor = color(205);
    doorClosedButtonLightColor = color(205);
    alarmButtonLightColor = color(205);
    emergencyLightColor = color(205);
    savedTime = millis();
  }
}

void update(int x, int y){
  if(overFloorTwoButton(floorTwoButtonX, floorTwoButtonY, floorTwoButtonSize)){
    floorTwoButtonOver = true;
  }
  else if(overFloorOneButton(floorOneButtonX, floorOneButtonY, floorOneButtonSize)){
    floorOneButtonOver = true;
  }
  else if(overDoorOpenButton(doorOpenButtonX, doorOpenButtonY, doorOpenButtonSize)){
    doorOpenButtonOver = true;
  }
  else if(overDoorClosedButton(doorClosedButtonX, doorClosedButtonY, doorClosedButtonSize)){
    doorClosedButtonOver = true;
  }
  else if(overAlarmButton(alarmButtonX, alarmButtonY, alarmButtonSize)){
    alarmButtonOver = true;
  }
  else if(overEmergencyButton(emergencyButtonX, emergencyButtonY, emergencyButtonSize)){
    emergencyButtonOver = true;
  }
  else{
    floorTwoButtonOver = false;
    floorOneButtonOver = false;
    doorOpenButtonOver = false;
    doorClosedButtonOver = false;
    alarmButtonOver = false;
    emergencyButtonOver = false;
  }
}

void mousePressed(){
  if(floorTwoButtonOver){
    floorTwoButtonLightColor = color(255, 0, 0);
    floorTwoButtonPressed = true;
  }
  else if(floorOneButtonOver){
    floorOneButtonLightColor = color(255, 0, 0);
    floorOneButtonPressed = true;
  }
  else if(doorOpenButtonOver){
    doorOpenButtonLightColor = color(255, 0, 0);
    doorOpenButtonPressed = true;
  }
  else if(doorClosedButtonOver){
    doorClosedButtonLightColor = color(255, 0, 0);
    doorClosedButtonPressed = true;
  }
  else if(alarmButtonOver){
    alarmButtonLightColor = color(255, 0, 0);
    alarmButtonPressed = true;
  }
  else if(emergencyButtonOver){
    emergencyLightColor = color(255, 0, 0);
    emergencyButtonPressed = true;
  }
}

boolean overFloorTwoButton(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  }
  else{
    return false;
  }
}

boolean overFloorOneButton(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  }
  else{
    return false;
  }
}

boolean overDoorOpenButton(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  }
  else{
    return false;
  }
}

boolean overDoorClosedButton(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  }
  else{
    return false;
  }
}

boolean overAlarmButton(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  }
  else{
    return false;
  }
}

boolean overEmergencyButton(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  }
  else{
    return false;
  }
}
