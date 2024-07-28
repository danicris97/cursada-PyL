package clase2;

import java.lang.Runnable;
import java.lang.Thread;

public class Mensaje implements Runnable{
	private String mensaje;
	
	public Mensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	@Override
	public void run() {
        try {
            for (int i = 0; i < 20; i++) {
                System.out.println(this.mensaje + " " + i);
                Thread.sleep(1000);
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
	}
	
	
}
