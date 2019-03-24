PImage bg , groundHog , soil, life, soldier,robot;

int x=10; 
int soldierX;
int soldierY;
int robotX;
int robotY;
int laserRange;
int laserMove;
int laserX;
int laserX2;
int laserY;
int laserY2;
int speedX;


void setup() {
	size(640, 480, P2D);
  bg = loadImage("img/bg.jpg");
  groundHog = loadImage("img/groundhog.png");
  soil = loadImage("img/soil.png");
  life = loadImage("img/life.png");
  soldier = loadImage("img/soldier.png");
  soldierY=floor(random(4)+2);
  soldierY=soldierY*80;
  robot =loadImage("img/robot.png");
  robotX = floor(random(160,560));
  robotY = floor(random(4)+2);
  robotY = robotY*80;
  laserX = robotX+25;
  laserX2 = laserX;
  laserY = robotY+37;
  laserY2 = robotY+37;
 
}

void draw() {
//bg
  image(bg,0,0);
  
//grass
  noStroke();
  fill(124,204,25);
  rect(0,145,640,15);
 
//soil
  image(soil,0,160);
 
//groundhog
  image(groundHog,280,80);
  
//life
  image(life,10,10);
  image(life,x+70,10);
  image(life,x+140,10);
  
//sun
  strokeWeight(5);
  stroke(255,255,0);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
   //laser
  stroke(255,0,0);
  strokeCap(ROUND);  
  strokeWeight(10);
  line(laserX,laserY,laserX2,laserY2);
  
  
  laserX2 =laserX2-2;
  if(robotX-laserX2>=15)
    {laserX=laserX-2;}
  if(robotX-laserX2>=160)
    {laserX=robotX+25;
    laserX2=laserX;
}
  
  
  
  //robot
  image(robot,robotX,robotY);
  
   //soldier
   soldierX=soldierX+1;
   if(soldierX>=640){
      soldierX=-80;}
   
  image(soldier,soldierX,soldierY);
  
  
  
  
  
  
  
}
