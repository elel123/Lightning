
int secStartX = 150;
int secStartY = 20;
int secEndX = 150; 
int secEndY = 20;

int startX = 150;
int startY = 20;
int endX = 150; 
int endY = 20;

void setup()
{
  size(300,300);
  strokeWeight(1.5);


}
void draw()
{
	background(0);
	stroke(0);
	fill(255);
	ellipse(50, 35, 80, 80);
	strokeWeight(4);
	stroke((int)(Math.random()*25) + 230, (int)(Math.random()*25) + 230, (int)(Math.random()*40) );
	
	while(secEndY < 300)
	{
		secEndY = secStartY + (int)(Math.random()*10);
		secEndX = secStartX + ((int)(Math.random()*19)-9);
		line(secStartX, secStartY, secEndX, secEndY);
		secStartX = secEndX;
		secStartY = secEndY;
	}
	
	while(endY< 300)
	{
		endY = startY + (int)(Math.random()*10);
		endX = startX + ((int)(Math.random()*19)-9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
		//cloud
	fill(117, 117, 117);
	noStroke();
	ellipse(150, 55, 250, 80);
	ellipse(180, 55, 120, 100);
	ellipse(120, 55, 120, 100);

	
}
void mousePressed()
{
	/*
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
	*/

	secStartX = 150;
	secStartY = 20;
	secEndX = 150; 
	secEndY = 20;
	startX = 150;
	startY = 20;
	endX = 150; 
	endY = 20;

}

