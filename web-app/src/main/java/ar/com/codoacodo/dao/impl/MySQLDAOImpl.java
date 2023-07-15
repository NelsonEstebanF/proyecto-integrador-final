package ar.com.codoacodo.dao.impl;

//JDBC
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ar.com.codoacodo.db.AdministradorDeConexiones;
import ar.com.codoacodo.oop.Articulo;

//cumplo el contrato
public class MySQLDAOImpl implements DAO {

    // atributos
    private final String TABLE_NAME = "articulos";

    public Articulo getById(Long id) throws Exception {
        String sql = "select * from " + TABLE_NAME + " where id = ?";
        Connection con = AdministradorDeConexiones.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setLong(1, id);
        Articulo articulo = null;
        ResultSet res = pst.executeQuery();
        if (res.next()) {
            String titulo = res.getString(2);
            String imagen = res.getString(3);
            String autor = res.getString(4);
            Double precio = res.getDouble(5);
            boolean novedad = res.getBoolean(6);
            String codigo = res.getString(7);
            Date fechaCreacion = res.getDate(8);
            articulo = new Articulo(id, titulo, imagen, autor, precio, novedad, codigo, fechaCreacion);
        }
        return articulo;
    }

    @Override
    public void delete(Long id) throws Exception {
        String sql = "delete from " + TABLE_NAME + " where id = ? ";
        Connection con = AdministradorDeConexiones.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setLong(1, id);
        pst.execute();
    }

    @Override
    public ArrayList<Articulo> findAll() throws Exception {
        String sql = "select * from " + TABLE_NAME + "";
        Connection con = AdministradorDeConexiones.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        return obtenerLsta(pst);
    }

    @Override
    public ArrayList<Articulo> findAllByTitle(String clave) throws Exception {
        String sql = "SELECT * FROM " + TABLE_NAME + " WHERE LOWER(titulo) LIKE LOWER(?)";
        Connection con = AdministradorDeConexiones.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, "%" + clave + "%");
        return obtenerLsta(pst);
    }

    private ArrayList<Articulo> obtenerLsta(PreparedStatement pst) throws SQLException {
        ResultSet res = pst.executeQuery();
        ArrayList<Articulo> listado = null;
        if (res.next()) {
            listado = new ArrayList<>();
            do {
                Long id = res.getLong(1);
                String titulo = res.getString(2);
                String imagen = res.getString(3);
                String autor = res.getString(4);
                Double precio = res.getDouble(5);
                boolean novedad = res.getBoolean(6);
                String codigo = res.getString(7);
                Date fechaCreacion = res.getDate(8);
                listado.add(new Articulo(id, titulo, imagen, autor, precio, novedad, codigo, fechaCreacion));
            } while (res.next());
        }
        return listado;
    }

    @Override
    public void update(Articulo articulo) throws SQLException {
        String sql = "update " + TABLE_NAME;
        sql += " set titulo= ?, imagen= ?, precio= ?, autor= ?";
        sql += "where id = ?";
        Connection con = AdministradorDeConexiones.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, articulo.getTitulo());
        pst.setString(2, articulo.getImagen());
        pst.setDouble(3, articulo.getPrecio());
        pst.setString(4, articulo.getAutor());
        pst.setDouble(5, articulo.getId());
        pst.execute();

    }

    @Override
    public void create(Articulo articulo) throws Exception {
        String sql = "insert into " + TABLE_NAME;
        sql += " (titulo,autor,precio,novedad,codigo) ";
        sql += "values (?,?,?,?,?) ";
        Connection con = AdministradorDeConexiones.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, articulo.getTitulo());
        pst.setString(2, articulo.getAutor());
        pst.setDouble(3, articulo.getPrecio());
        pst.setInt(4, articulo.isNovedad() ? 1 : 0);
        pst.setString(5, articulo.getCodigo());
        pst.execute();
    }

}
