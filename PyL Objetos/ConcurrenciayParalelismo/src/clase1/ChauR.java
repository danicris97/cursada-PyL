package clase1;

import java.lang.Runnable;

public class ChauR implements Runnable{

	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i=0; i<100; i++) {
			System.out.println("Chau " + i);
		}
	}
	
}
