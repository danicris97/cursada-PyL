package clase1;

import java.lang.Thread;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Hola h = new Hola();
		//Chau c = new Chau();
		
		//Thread h = new Thread(new HolaR());
		//Thread c = new Thread(new ChauR());
		
		Thread h = new Thread(new Mensaje("hola"));
		Thread c = new Thread(new Mensaje("chau"));
		
		h.start();
		c.start();
		
		System.out.println("FIN...");
	}

}
