package ar.com.codoacodo;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ar.com.codoacodo.dao.impl.DAO;
import ar.com.codoacodo.dao.impl.MySQLDAOImpl;

@WebServlet("/Delete-Articulo")
public class DeleteController extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DAO dao = new MySQLDAOImpl();
        try {
            dao.delete(Long.parseLong(id));
            String location = req.getContextPath() + "/Lista-Articulos";
            resp.sendRedirect(location);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
