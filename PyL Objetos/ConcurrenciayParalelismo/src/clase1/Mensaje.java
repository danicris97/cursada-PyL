package clase1;

import java.lang.Runnable;

public class Mensaje implements Runnable{
	private String mensaje;
	
	public Mensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	@Override
	public void run() {
		for (int i=0;i<100;i++) {
			System.out.println(this.mensaje + " " + i);
		}
	}
	
	
}
