package clase4;

public class Deposito {
	private int elementos = 0;
	private int max = 10;
	
	public synchronized void poner(){
		try {
			if(elementos> 0)
				this.wait();
		}catch(InterruptedException e) { }
		this.elementos++;
		System.out.println("poner - nroElems: " + elementos);
		this.notify();
	}
		
	public synchronized void sacar(){
		try {
			if(elementos==0)
				this.wait();
		}catch(InterruptedException e) { }
		this.elementos--;
		System.out.println("sacar - nroElems: " + elementos);
		this.notify();
	}
}