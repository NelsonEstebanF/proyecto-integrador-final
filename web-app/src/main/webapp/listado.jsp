<%@ page import="java.util.ArrayList" %>
  <%@ page import="ar.com.codoacodo.oop.Articulo" %>
    <!DOCTYPE html>
    <html lang="es">

    <jsp:include page="/jspComponent/head.jsp">
      <jsp:param name="title" value="Lista articulos" />
    </jsp:include>

    <body>
      <jsp:include page="/jspComponent/navbar.jsp">
        <jsp:param name="search" value="true" />
      </jsp:include>
      <%ArrayList<Articulo> articulos = (ArrayList<Articulo>)request.getAttribute("articulos");%>
          <% String error=(String)request.getAttribute("error");%>
            <% if(error!=null) { %>
              <div class="alert alert-danger" role="alert">
                <%=error%>
              </div>
              <% } %>
                <% String success=(String)request.getAttribute("success");%>
                  <% if(success!=null) { %>
                    <div class="alert alert-success" role="alert">
                      <%=success%>
                    </div>
                    <% } %>
                      <div class="container">
                        <div class="row">
                          <div class="col-12">
                            <section>
                              <% if(articulos==null) { %>
                                <div class="alert alert-success" role="alert">
                                  <h1>No se encontraron resultados</h1>
                                </div>
                                <% } %>
                                  <% if(articulos !=null) { %>
                                    <h1>Lista de Art&iacute;culos</h1>
                                    <table class="table table-striped table-hover">
                                      <thead>
                                        <tr>
                                          <th scope="col">#</th>
                                          <th scope="col">T&iacute;tulo</th>
                                          <th scope="col">C&oacute;digo</th>
                                          <th scope="col">Precio</th>
                                          <th scope="col">Fecha</th>
                                          <th scope="col">Acciones</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <% for(Articulo articulo : articulos) { %>
                                          <tr>
                                            <th scope="row">
                                              <%=articulo.getId()%>
                                            </th>
                                            <td>
                                              <%=articulo.getTitulo()%>
                                            </td>
                                            <td>
                                              <%=articulo.getCodigo()%>
                                            </td>
                                            <td>
                                              <%=articulo.getPrecio()%>
                                            </td>
                                            <td>
                                              <%=articulo.getFechaCreacion()%>
                                            </td>
                                            <td>
                                              <a href="<%=request.getContextPath()%>/Delete-Articulo?id=<%=articulo.getId()%>"
                                                class="btn btn-danger" tabindex="-1" role="button" aria-disabled="true"
                                                onclick="return confirm('\u00BFEst\u00E1s seguro de que deseas eliminar este art\u00EDculo?')">
                                                Eliminar
                                              </a>
                                              <a href="<%=request.getContextPath()%>/Editar-Articulo?id=<%=articulo.getId()%>"
                                                class="btn btn-warning" tabindex="-1" role="button"
                                                aria-disabled="true">
                                                Editar
                                              </a>
                                            </td>
                                          </tr>
                                          <% } %>
                                            <% } %>
                                      </tbody>
                                    </table>
                            </section>
                          </div>
                        </div>
    </body>

    </html>