<% String error=(String) request.getAttribute("error"); %>
    <% if (error !=null && !error.isEmpty()) { %>
        <div class="alert alert-danger" role="alert">
            <%= error %>
        </div>
        <% } %>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <section>
                            <h1>
                                <%= titulo %>
                            </h1>
                            <form class="needs-validation" method="post" action="<%= action %>" novalidate>
                                <!-- Nombre -->
                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre</label>
                                    <input name="nombre" type="text" class="form-control" id="nombre" maxlength="50"
                                        value="<%= nombre %>" required>
                                    <div class="invalid-feedback">
                                        Por favor, ingresa un nombre.
                                    </div>
                                </div>
                                <!-- Precio -->
                                <div class="mb-3">
                                    <label for="precio" class="form-label">Precio</label>
                                    <input name="precio" type="number" class="form-control" id="precio" step="0.01"
                                        value="<%= precio %>" required>
                                    <div class="invalid-feedback">
                                        Por favor, ingresa un precio válido.
                                    </div>
                                </div>
                                <!-- Imagen -->
                                <div class="mb-3">
                                    <label for="imagen" class="form-label">Im&aacute;gen</label>
                                    <input name="imagen" type="file" class="form-control" id="imagen"
                                        value="<%= imagen %>">
                                </div>
                                <!-- Código -->
                                <div class="mb-3">
                                    <label for="codigo" class="form-label">C&oacute;digo</label>
                                    <% if (editableCodigo) { %>
                                        <input name="codigo" type="text" class="form-control" id="codigo" maxlength="7"
                                            value="<%= codigo %>" required>
                                        <div class="invalid-feedback">
                                            Por favor, ingresa un código.
                                        </div>
                                        <% } else { %>
                                            <input name="codigo" type="text" disabled readonly class="form-control"
                                                id="codigo" maxlength="7" value="<%= codigo %>">
                                            <% } %>
                                </div>
                                <!-- Autor -->
                                <div class="mb-3">
                                    <label for="autor" class="form-label">Autor</label>
                                    <input name="autor" type="text" class="form-control" id="autor" maxlength="50"
                                        value="<%= autor %>" required>
                                    <div class="invalid-feedback">
                                        Por favor, ingresa un autor.
                                    </div>
                                </div>
                                <!-- Botón -->
                                <button class="btn btn-primary">
                                    <%= buttonText %>
                                </button>
                            </form>
                        </section>
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
                    crossorigin="anonymous"></script>
                <script src="<%= contextPath %>/js/nuevo.js"></script>
            </div>