<%@ page import ="java.sql.*" %>
<%
     final String  dbName = "root";
    final String password ="chiruhas2000";
    String userid = request.getParameter("name");    
    String pwd = request.getParameter("password");
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        System.out.println("Exception occured "+e);
        e.printStackTrace();
    }
    Connection con = null;
    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory",dbName,password);
    } catch (SQLException e) {

        e.printStackTrace();
    }
    assert con != null;
    Statement st = null;
    try {
        st = con.createStatement();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    ResultSet rs = null;
    try {
        assert st != null;
        rs = st.executeQuery("select * from staff where staff_id='" + userid + "' and password='" + pwd + "'");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("main.jsp?name="+userid);
    } else {
        out.println("Invalid password <a href='http://localhost:8080/inventory_war_exploded'>try again</a>");
    }
%>