package clase2;

import java.lang.Runnable;
import java.lang.Thread;

public class MensajeR implements Runnable{
	private String mensaje;
	
	public MensajeR(String mensaje) {
		this.mensaje = mensaje;
	}

	@Override
	public void run() {
		for (int i = 0; i < 20; i++) {
			System.out.println(this.mensaje + " " + i);
            Thread.yield();
        }
	}
	
	
}
