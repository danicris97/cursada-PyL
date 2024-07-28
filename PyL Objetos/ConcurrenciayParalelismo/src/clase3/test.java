package clase3;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		clsHistorial historial = new clsHistorial();
		clsNavegador n1 = new
		clsNavegador(historial);
		clsNavegador n2 = new
		clsNavegador(historial);
		n1.start();
		n2.start();
	}

}
