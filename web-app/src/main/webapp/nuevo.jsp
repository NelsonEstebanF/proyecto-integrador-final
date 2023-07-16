<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<jsp:include page="/jspComponent/head.jsp">
    <jsp:param name="title" value="Nuevo articulo" />
</jsp:include>

<body>
    <jsp:include page="/jspComponent/navbar.jsp">
        <jsp:param name="search" value="false" />
    </jsp:include>
    <jsp:include page="/jspComponent/AltaModificacion.jsp">
        <jsp:param name="titulo" value="Alta Art&iacute;culo" />
        <jsp:param name="actionURL" value="/Alta-Articulo" />
        <jsp:param name="editableCodigo" value="true" />
        <jsp:param name="buttonText" value="Dar de alta" />
    </jsp:include>
</body>

</html>