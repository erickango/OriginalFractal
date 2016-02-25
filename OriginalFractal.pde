public void setup(){
	size(600, 600);
}

public void draw(){

    fill((float)(Math.random() * 256), (float)(Math.random() * 256), (float)(Math.random() * 256));
	myFractal(300, 400, 400);

}


public void myFractal(int x, int y, int siz){
    fill((float)(Math.random() * 256), (float)(Math.random() * 256), (float)(Math.random() * 256));
	ellipse(x, y, siz / 2, siz/2);

	if(siz > 20){
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
