void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(192);
	Die flippy = new Die(50,150);
	flippy.show();
	flippy.roll();
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
	
	Die(int x, int y) //constructor
	{
		roll();
	}
	void roll()
	{
		if((int)(Math.random()*6)+1 <= 1){
			one = true;
		} else if((int)(Math.random()*6)+1 <= 2){
			two = true;
		} else if((int)(Math.random()*6)+1 <= 3){
			three = true;
		} else if((int)(Math.random()*6)+1 <= 4){
			four = true;
		} else if((int)(Math.random()*6)+1 <= 5){
			five = true;
		} else if((int)(Math.random()*6)+1 <= 6){
			six = true;
		}
	}
	void show()
	{
		fill(255);
		rect(50,50,50,50);
		fill(0);
		if(one == true){
			ellipse(75,75,10,10);
		} else if(two == true){
			ellipse(60,60,10,10);
			ellipse(90,90,10,10);
		} else if(three == true){
			ellipse(75,75,10,10);
			ellipse(90,60,10,10);
			ellipse(60,90,10,10);
		} else if(four == true){
			ellipse(60,60,10,10);
			ellipse(90,90,10,10);
			ellipse(90,60,10,10);
			ellipse(60,90,10,10);
		}
	}
}
