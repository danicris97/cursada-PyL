package clase1;

import java.lang.Runnable;

public class HolaR implements Runnable{

	@Override
	public void run() {
		for(int i=0;i<100;i++) {
			System.out.println("Hola " + i);
		}
	}
	
}
