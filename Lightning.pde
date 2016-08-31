/*
int startX = 0;
int startY = 150;
int endX = 0; 
int endY = 150;
*/
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
	ellipse(50, 50, 70, 70);
	strokeWeight(3.5);
	stroke((int)(Math.random()*25) + 230, (int)(Math.random()*25) + 230, (int)(Math.random()*40) );
	/*
	while(endX < 300)
	{
		endX = startX + (int)(Math.random()*10);
		endY = startY + ((int)(Math.random()*19)-9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	*/
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
	startX = 150;
	startY = 20;
	endX = 150; 
	endY = 20;
}

