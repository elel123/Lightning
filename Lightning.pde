
int cRed = 250;
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
	stroke(0);
	background(0);
	//ground
	fill(28, 121, 0);
	rect(0, 250, 400, 100);
	
	//moon
	fill(255);
	ellipse(50, 35, 80, 80);
	strokeWeight(4);
	stroke((int)(Math.random()*25) + 230, (int)(Math.random()*25) + 230, (int)(Math.random()*40) );
	
	while(secEndY < 275)
	{
		secEndY = secStartY + (int)(Math.random()*10);
		secEndX = secStartX + ((int)(Math.random()*19)-9);
		line(secStartX, secStartY, secEndX, secEndY);
		secStartX = secEndX;
		secStartY = secEndY;
	}
	
	while(endY< 275)
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

	person();
	if(endX==mouseX){
		cRed=290;
	}

	if(secEndX==mouseX){
		cRed=290;
	}
	
}

void person()
{
	noStroke();
	//body
	fill(255, 51, 65);
	rect(mouseX - 10, 257, 20, 20, 8);https://elel123.github.io/Lightning/
	//legs
	fill(0, 171, 255);
	rect(mouseX - 10, 272, 8, 18, 6);
	rect(mouseX , 272, 8, 18, 6);
	fill(0);
	rect(mouseX - 10, 288, 8, 8, 6);
	rect(mouseX , 288, 8, 8, 6);
	//arms
	//if()
	fill(255, 240, 174);
	ellipse(mouseX - 10, 265, 10, 10);
	ellipse(mouseX + 10, 265, 10, 10);


	//head
	fill(250, 240, 174);
	ellipse(mouseX, cRed , 20, 20);
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

