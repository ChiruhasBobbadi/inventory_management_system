<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("http://localhost:8080/inventory_war_exploded");
%>