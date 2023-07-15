package ar.com.codoacodo.oop;

import java.sql.Date;

//todas las clases son hijas de Object
//nombre
public class Articulo {

    // atributos: convertir a protected
    protected Long id;
    protected String titulo;
    protected Double precio;
    protected String imagen;
    protected String autor;
    protected boolean novedad;
    protected Date fechaCreacion;
    protected String codigo;

    // constuctor/es
    // si no escribo el constructor, JVM me da uno por defecto
    public Articulo(
            String titulo,
            String imagen,
            String autor,
            Double precio,
            boolean novedad,
            String codigo) {
        extracted(titulo, imagen, autor, precio, novedad, codigo);
    }

    public Articulo(
            Long id,
            String titulo,
            String imagen,
            String autor,
            Double precio,
            boolean novedad,
            String codigo,
            Date fechaCreacion) {
        extracted(titulo, imagen, autor, precio, novedad, codigo);
        this.id = id;
        this.fechaCreacion = fechaCreacion;
    }

    private void extracted(String titulo, String imagen, String autor, Double precio, boolean novedad, String codigo) {
        this.imagen = imagen;
        this.titulo = titulo;
        this.autor = autor;
        this.novedad = false;
        this.precio = precio;
        this.novedad = novedad;
        this.codigo = codigo;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public boolean isNovedad() {
        return novedad;
    }

    public void setNovedad(boolean novedad) {
        this.novedad = novedad;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public String getCodigo() {
        return codigo;
    }

    @Override
    public String toString() {
        return "Articulo [id=" + id + ", titulo=" + titulo + ", precio=" + precio + ", imagen=" + imagen + ", autor="
                + autor + ", novedad=" + novedad + ", fechaCreacion=" + fechaCreacion + ", codigo=" + codigo + "]";
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

}
