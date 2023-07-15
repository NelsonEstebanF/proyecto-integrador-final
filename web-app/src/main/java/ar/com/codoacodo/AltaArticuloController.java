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
        setAttributes(req, "", "", "", "");
        getServletContext().getRequestDispatcher("/nuevo.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String titulo = req.getParameter("nombre");
        String precioString = req.getParameter("precio");
        Double precio = Double.parseDouble(precioString);
        String autor = req.getParameter("autor");
        String codigo = req.getParameter("codigo");
        boolean novedad = false;

        Articulo nuevo = new Articulo(titulo, (titulo + ".jpg"), autor, precio, novedad, codigo);
        DAO dao = new MySQLDAOImpl();

        try {
            if (dao.existeCodigo(codigo)) {
                // El código ya existe, muestra un mensaje de error
                setAttributes(req, titulo, precioString, autor, codigo);
                req.setAttribute("error", "El código ya existe en la base de datos");
            } else {
                // El código no existe, procede a crear el artículo
                dao.create(nuevo);
                req.setAttribute("success", "Se ha añadido el artículo " + titulo);
                req.getRequestDispatcher("/Lista-Articulos").forward(req, resp);
                return; // Termina el método después de redirigir
            }
        } catch (Exception e) {
            e.printStackTrace();
            setAttributes(req, titulo, precioString, autor, codigo);
            req.setAttribute("error", "Fallo la conexión con la base de datos");
        }

        getServletContext().getRequestDispatcher("/nuevo.jsp").forward(req, resp);
    }

    private void setAttributes(HttpServletRequest req, String titulo, String precioString, String autor,
            String codigo) {
        req.setAttribute("nombre", titulo);
        req.setAttribute("precio", precioString);
        req.setAttribute("autor", autor);
        req.setAttribute("codigo", codigo);
    }

}