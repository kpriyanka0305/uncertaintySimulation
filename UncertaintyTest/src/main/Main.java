package main;

import java.text.DecimalFormat;
import java.util.Random;

import uDataTypes.java.UBoolean;
import uDataTypes.java.UEnum;
import uDataTypes.java.UReal;

enum Color 
{ 
    RED, GREEN, BLUE; 
} 

public class Main {

	public static void main(String[] args) {
		
	/*	Random random = new Random();
		double d = random.nextDouble();
		DecimalFormat df = new DecimalFormat("#.#");

		
		System.out.println("random numbers " + df.format(d));
		
		UBoolean cameraAccuracy =  new UBoolean(true, 0.9);
		UBoolean climateConditions = new UBoolean(true, 0.8);
		
		UBoolean b3 =  cameraAccuracy.and(climateConditions);
		//UBoolean b4 = cameraAccuracy.or(climateConditions);
		
		//System.out.println(r3);
		System.out.println(b3);
		//System.out.println(b4);
	
		
		if(b3.getC() >= 0.5) {
			System.out.println("All ITS agents working fine");
		}else {
			System.out.println("Not favourable");
		}
		
		
		
		UReal r1 = new UReal(1.56, 0.7);
		UReal r2 = new UReal(0.5, 0.8);
		UReal r3 = r1.add(r2);
		
		Double [] colorArrary = {0.8, 0.1, 0.1};
		Double [] colorArrary2 = {0.8, 0.1, 0.1};
		
		
		UEnum<Color> c1 = new UEnum<Color>(Color.class, colorArrary) ;
		UEnum<Color> c2 = new UEnum<Color>(Color.class, colorArrary2) ;
		UBoolean enumEq = c1.uEquals(c2);
		
		//System.out.println(enumEq);
		
*/
		
		UReal xb = new UReal(5,0.7); //5mts for bus
		UReal xc = new UReal(20,0.5); //20mts position for bike
		UReal yb = new UReal(5,0.7);
		UReal yc = new UReal(10,0.7);
		
		UReal dx = xc.minus(xb); // xc-xb;
		UReal dy = yc.minus(yb); // yc-yb;
		
		UReal c = dx.mult(dx).add(dy.mult(dy)).sqrt();
		
		System.out.println("---" + c);
		System.out.println("t0 = " + p(0));
		System.out.println("t1 = " + p(1));
		System.out.println("t2 = " + p(2));
		
		
	}
	
	private static UReal p(double t) {
		UReal vb = new UReal(8.0,0.7); // bus velocity
		
		return vb.mult(new UReal(t));
		
	}

}
