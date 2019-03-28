<%
  String type = request.getParameter("type");
  if(type.equals("S")) {
%>
<jsp:forward page="/simple.jsp"/>
<% 
  } else {
%>
 <jsp:forward page="/compound.jsp"/>
<%
  }
%> 
