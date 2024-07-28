package clase3;

import java.util.Random;

//clase hilo
public class clsNavegador extends Thread{
	String[] url;
	clsHistorial historial;
	
	public clsNavegador(clsHistorial h){
		this.url = new String[]{"facebook.com","google.com","youtube.com","instagram.com","youtubeAmarillo.com"};
		this.historial = h;
	}
	
	public void run(){
		for(int i= 0; i<100; i++){
			int indice = new Random().nextInt(url.length);
			System.out.println("Agrega url al historial..." + this.url[indice]);
			this.historial.agregar(this.url[indice]);
		}
	}
}
