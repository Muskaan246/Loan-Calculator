<%@ page errorPage="error.jsp" %>
<%!
  public double calculate(double amount, double interest, int period) {
    if(amount <= 0) {
      throw new IllegalArgumentException("Amount should be greater than 0: " + amount);
    }
    if(interest <= 0) {
      throw new IllegalArgumentException("Interest should be greater than 0: " + interest);
    }
    if(period <= 0) {
      throw new IllegalArgumentException("Period should be greater than 0: " + period);
    }
    return amount*Math.pow(1 + interest/100, period);
  }
%>
<html>
  <head>
    <title>Compound</title>
  </head>
  <body style="font-family:verdana;font-size:10pt;">
    <%@ include file="header.jsp" %>
    <%
      double amount = Double.parseDouble(request.getParameter("amount"));
      double interest = Double.parseDouble(request.getParameter("interest"));
      int period = Integer.parseInt(request.getParameter("period"));
    %>
   <b>Principal using compound interest:</b>
    <%= calculate(amount, interest, period) %>
    <br/><br/>
    <jsp:include page="footer.jsp"/>
  </body>
</html>
