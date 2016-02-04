public void setup(){
	size(500, 500);
}

public void draw(){
	background(0);
//	fill((float)(Math.random() * 256), (float)(Math.random() * 256), (float)(Math.random() * 256));
	myFractal(250, 250, 480);
}


public void myFractal(int x, int y, int siz){
	
	triangle(x - siz / 2, y + siz / 2, x + siz/2, y + siz/2, x, y-siz/2);
	ellipse(x, y, siz, siz/2);
	if(siz > 10){
		pushMatrix();
		translate(x - siz / 2, y);
		rotate(-PI/4);
		myFractal(0, 0, siz / 2);
		popMatrix();

		pushMatrix();
		translate(x + siz / 2, y);
		rotate(PI/4);
		myFractal(0, 0, siz / 2);
		popMatrix();

	}
}
