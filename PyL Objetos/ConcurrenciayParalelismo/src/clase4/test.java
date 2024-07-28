package clase4;

public class test {

	public static void main(String[] arg){
		Deposito deposito = new Deposito();
		Productor p = new Productor(deposito);
		Productor p2 = new Productor(deposito);
		Productor p3 = new Productor(deposito);
		Consumidor c = new Consumidor(deposito);
		Consumidor c2 = new Consumidor(deposito);
		//Consumidor c3 = new Consumidor(deposito);
		p.start();
		p2.start();
		p3.start();
		c.start();
		c2.start();
	}

}
