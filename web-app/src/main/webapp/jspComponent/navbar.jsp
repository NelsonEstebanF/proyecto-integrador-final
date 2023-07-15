<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="/web-app">Inicio</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/Alta-Articulo">Nuevo</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/Lista-Articulos">Lista art&iacute;culos</a>
          </li>              
        </ul>
        <% if ("true".equals(request.getParameter("search"))) { %>
          <form class="d-flex" role="search" action="<%=request.getContextPath()%>/Buscar-Articulo" method="post">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="clave">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
      <% } %>
        
      </div>
    </div>
  </nav>