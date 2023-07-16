<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
    <html lang="en">

    <jsp:include page="/jspComponent/head.jsp">
        <jsp:param name="title" value="Editar articulo" />
    </jsp:include>

    <body>
        <jsp:include page="/jspComponent/navbar.jsp">
            <jsp:param name="search" value="false" />
        </jsp:include>
        <jsp:include page="/jspComponent/AltaModificacion.jsp">
            <jsp:param name="titulo" value="Editar Art&iacute;culo id=" />
            <jsp:param name="actionURL" value="/Editar-Articulo" />
            <jsp:param name="editableCodigo" value="false" />
            <jsp:param name="buttonText" value="Modificar" />
        </jsp:include>

    </body>

    </html>