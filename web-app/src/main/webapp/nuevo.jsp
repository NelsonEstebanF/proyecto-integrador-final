<!DOCTYPE html>
<html lang="es">
<jsp:include page="/jspComponent/head.jsp">
    <jsp:param name="title" value="Nuevo articulo" />
</jsp:include>

<body>
    <jsp:include page="/jspComponent/navbar.jsp">
        <jsp:param name="search" value="false" />
    </jsp:include>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <section>
                    <h1>Alta Art&iacute;culo</h1>
                    <form class="needs-validation" method="post" action="<%=request.getContextPath()%>/Alta-Articulo"
                        novalidate>
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input name="nombre" type="text" class="form-control" id="nombre" placeholder="Nombre"
                                maxlength="50" required>
                            <div class="invalid-feedback">
                                Por favor, ingresa un nombre.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="precio" class="form-label">Precio
                            </label>
                            <input name="precio" type="number" class="form-control" id="precio" required>
                            <div class="invalid-feedback">
                                Por favor, ingresa un precio.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="imagen" class="form-label">Im&aacute;gen
                            </label>
                            <input name="imagen" type="file" class="form-control" id="imagen">
                        </div>
                        <div class="mb-3">
                            <label for="codigo" class="form-label">C&oacute;digo
                            </label>
                            <input name="codigo" type="text" class="form-control" id="codigo" maxlength="7" required>
                            <div class="invalid-feedback">
                                Por favor, ingresa un código.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="autor" class="form-label">Autor
                            </label>
                            <input name="autor" type="text" class="form-control" id="autor" maxlength="50" required>
                            <div class="invalid-feedback">
                                Por favor, ingresa un autor.
                            </div>
                        </div>
                        <button class="btn btn-primary">
                            Dar de alta
                        </button>
                    </form>
                </section>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
        <script src="<%=request.getContextPath()%>/js/nuevo.js"></script>

</body>

</html>