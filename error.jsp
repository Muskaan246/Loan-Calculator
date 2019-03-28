<%@ page isErrorPage="true" %>
<html>
  <head>
    <title>Simple</title>
  </head>
  <body style="font-family:verdana;font-size:10pt;">
    <%@ include file="header.jsp" %>
    <p style="color=#FF0000"><b><%= exception.getMessage() %></b></p>
    <jsp:include page="footer.jsp"/>
  </body>
</html>       
