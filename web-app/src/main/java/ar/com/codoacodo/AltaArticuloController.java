package ar.com.codoacodo;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ar.com.codoacodo.dao.impl.DAO;
import ar.com.codoacodo.dao.impl.MySQLDAOImpl;
import ar.com.codoacodo.oop.Articulo;

@WebServlet("/Alta-Articulo")
public class AltaArticuloController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/nuevo.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String titulo = req.getParameter("nombre");
        String precioString = req.getParameter("precio");
        Double  precio = Double.parseDouble(precioString);
        String autor = req.getParameter("autor");
        String codigo = req.getParameter("codigo");
        boolean novedad = false;

        Articulo nuevo = new Articulo(titulo, (titulo + ".jpg"), autor, precio, novedad, codigo);
        DAO dao = new MySQLDAOImpl();
        try {
            dao.create(nuevo);
            req.setAttribute("success", "Se ha añadido el articulo " + titulo);
            req.getRequestDispatcher("/Lista-Articulos").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
