package clase3;


//objeto compartido....
public class clsHistorial{
	String[] historial = new String[10000];
	int index = 0;
	
	public synchronized void agregar(String url){
		this.historial[index]= url;
		this.index++;
	}
}