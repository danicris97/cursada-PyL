package clase2;

import java.lang.Thread;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Thread h = new Thread(new Mensaje("hola"));
		Thread c = new Thread(new MensajeR("chau"));
		
		h.start();
		c.start();
		
		try {
			h.join(5000);
			c.join();
			
		}catch (InterruptedException e) {
			
		}
		
		
		System.out.println("FIN...");
	}

}
