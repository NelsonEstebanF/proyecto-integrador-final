package ar.com.codoacodo;

import java.util.Random;
import ar.com.codoacodo.dao.impl.DAO;
import ar.com.codoacodo.dao.impl.MySQLDAOImpl;
import ar.com.codoacodo.oop.Articulo;

public class insert {

    public static void main(String[] args) {
        for (int i = 0; i < 50; i++) {
            String titulo = "Articulo" + (i + 1);
            String imagen = "imagen" + (i + 1) + ".jpg";
            String autor = "Autor " + (i + 1);
            double precio = aleatorio();
            String codigo = "COD" + String.format("%03d", i + 1);
            Articulo nuevo = new Articulo(titulo, imagen, autor, precio, false, codigo);
            DAO dao = new MySQLDAOImpl();
            try {
                dao.create(nuevo);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static double aleatorio() {
        Random random = new Random();
        double numeroAleatorio = random.nextDouble() * 100;
        double alazar = Math.round(numeroAleatorio * 100.0) / 100.0;
        return alazar;
    }
}
