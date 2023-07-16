<%@ page import="ar.com.codoacodo.oop.Articulo" %>
    <% String error=(String)request.getAttribute("error");%>
        <% Articulo articulo=(Articulo)request.getAttribute("articulo"); %>
            <% if(error!=null) { %>
                <div class="alert alert-danger" role="alert">
                    <%= error %>
                </div>
                <% } %>
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <section>
                                    <h1>
                                        <%= request.getParameter("titulo") %>
                                            <% if (articulo.getId() !=null) { %>
                                                <%= articulo.getId() %>
                                                    <% } %>
                                    </h1>
                                    <form class="needs-validation" method="post"
                                        action='<%= request.getContextPath() + request.getParameter("actionURL")%>'
                                        novalidate>
                                        <input type="hidden" name="id"
                                            value='<%=articulo.getId() != null ? articulo.getId() :""%>'>
                                        <!-- Nombre -->
                                        <div class="mb-3">
                                            <label for="nombre" class="form-label">Nombre</label>
                                            <input name="nombre" type="text" class="form-control" id="nombre"
                                                maxlength="50" value="<%=articulo.getTitulo()%>" required>
                                            <div class="invalid-feedback">
                                                Por favor, ingresa un nombre.
                                            </div>
                                        </div>
                                        <!-- Precio -->
                                        <div class="mb-3">
                                            <label for="precio" class="form-label">Precio</label>
                                            <input name="precio" type="number" class="form-control" id="precio"
                                                step="0.01" value="<%=articulo.getPrecio()%>" required>
                                            <div class="invalid-feedback">
                                                Por favor, ingresa un precio v&aacute;lido.
                                            </div>
                                        </div>
                                        <!-- Imagen -->
                                        <div class="mb-3">
                                            <label for="imagen" class="form-label">Im&aacute;gen</label>
                                            <input name="imagen" type="file" class="form-control" id="imagen">
                                        </div>
                                        <!-- Código -->
                                        <div class="mb-3">
                                            <label for="codigo" class="form-label">C&oacute;digo</label>
                                            <% String editableCodigo=request.getParameter("editableCodigo"); %>
                                                <% if ("true".equals(editableCodigo)) { %>
                                                    <input name="codigo" type="text" class="form-control" id="codigo"
                                                        maxlength="7" value="<%=articulo.getCodigo()%>" required>
                                                    <div class="invalid-feedback">
                                                        Por favor, ingresa un c&oacute;digo.
                                                    </div>
                                                    <% } else { %>
                                                        <input type="text" disabled readonly class="form-control"
                                                            id="codigo" maxlength="7" value="<%=articulo.getCodigo()%>">
                                                        <input type="hidden" name="codigo"
                                                            value="<%=articulo.getCodigo()%>">
                                                        <% } %>
                                        </div>
                                        <!-- Autor -->
                                        <div class="mb-3">
                                            <label for="autor" class="form-label">Autor</label>
                                            <input name="autor" type="text" class="form-control" id="autor"
                                                maxlength="50" value="<%=articulo.getAutor()%>" required>
                                            <div class="invalid-feedback">
                                                Por favor, ingresa un autor.
                                            </div>
                                        </div>
                                        <!-- Botón -->
                                        <button class="btn btn-primary">
                                            <%=request.getParameter("buttonText")%>
                                        </button>
                                    </form>
                                </section>
                            </div>
                        </div>
                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
                            crossorigin="anonymous"></script>
                        <script src="<%=request.getContextPath()%>/js/nuevo.js"></script>
                    </div>