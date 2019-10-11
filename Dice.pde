void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(192);
	int numDots = 0;
	for(int y = 10; y <= 400; y = y + 60){
		for(int x = 10; x < 450; x = x + 60){
			Die bob = new Die(x,y);
			bob.roll();
			bob.show();
			if(bob.one == true ||
				bob.two == true ||
				bob.three == true ||
				bob.four == true ||
				bob.five == true &&
				bob.six == true) {
				numDots++;
			}
		}
	}
  textSize(20);
  fill(0);
  text("There are " + numDots + " dots on the screen.",100,470);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	boolean one;
	boolean two;
	boolean three;
	boolean four;
	boolean five;
	boolean six;
	int myX, myY;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		if((int)(Math.random()*6)+1 <= 1){
			one = true;
			two = three = four = five = six = false;
		} else if((int)(Math.random()*6)+1 <= 2){
			two = true;
			one = three = four = five = six = false;
		} else if((int)(Math.random()*6)+1 <= 3){
			three = true;
			one = two = four = five = six = false;
		} else if((int)(Math.random()*6)+1 <= 4){
			four = true;
			one = two = three = five = six = false;
		} else if((int)(Math.random()*6)+1 <= 5){
			five = true;
			one = two = three = four = six = false;
		} else if((int)(Math.random()*6)+1 <= 6){
			six = true;
			one = two = three = four = five = false;
		}
	}
	void show()
	{
		fill((int)(Math.random()*220)+1,(int)(Math.random()*220)+1,(int)(Math.random()*220)+1);
		rect(myX,myY,50,50);
		fill((int)(Math.random()*200)+30,(int)(Math.random()*220)+1,(int)(Math.random()*220)+1);
		if(one == true){
			ellipse(myX+25,myY+25,10,10);
		} else if(two == true){
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+40,myY+40,10,10);
		} else if(three == true){
			ellipse(myX+40,myY+10,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+10,myY+40,10,10);
		} else if(four == true){
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+10,myY+40,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+40,myY+10,10,10);
		} else if(five == true){
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+10,myY+40,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+40,myY+10,10,10);
			ellipse(myX+25,myY+25,10,10);
		} else if(six == true){
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+10,myY+40,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+40,myY+10,10,10);
			ellipse(myX+10,myY+25,10,10);
			ellipse(myX+40,myY+25,10,10);
		}
	}
}
