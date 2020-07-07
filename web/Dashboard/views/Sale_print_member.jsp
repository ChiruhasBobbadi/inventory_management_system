<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        response.sendRedirect("http://localhost:8080/inventory_war_exploded");
%>
<h1>You are not logged in</h1><br/>
<a href="http://localhost:8080/inventory_war_exploded">Please Login</a>
<%} else {

%>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Customer</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.css">
     <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        
    <style>
      @import url(http://fonts.googleapis.com/css?family=Bree+Serif);
      body, h1, h2, h3, h4, h5, h6{
      font-family: 'Bree Serif', serif;
      }
    </style>
  </head>
  
 <body>
       <%@ page import="java.io.*,java.util.*,java.sql.*"%>

            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>            
            <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost:3036/inventory"
                               user="root"  password="chiruhas2000"/>
    <div class="container">
      <div class="row">
        <div class="col-xs-6">
          <h1>
              <a>
                  <img src="../../Image/logo2.png" width="170" height="150" alt="" class="img-circle">
            </a>
          </h1>
        </div>
        <div class="col-xs-6 text-right">
          <h1>Slip</h1>
          <h1><small>Sell NO. #001</small></h1>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-5">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>From: <a href="#"><%=session.getAttribute("userid")%></a></h4>
            </div>
            
          </div>
        </div>
        <div class="col-xs-5 col-xs-offset-2 text-right">
          <div class="panel panel-default">
            <div class="panel-heading">
                <sql:query dataSource="${dbsource}" var="result">
            SELECT * from membership where member_id=?;
            <sql:param value="${param.member_id}" />
        </sql:query>
              <h4>To : <a href="#"><c:forEach var="row" items="${result.rows}">
                    
                        <input type="hidden" value="${param.member_id}" name="member_id"/>
                            <input type="text" value="${row.name}" name="name" disabled/>
                </c:forEach></a></h4>
            </div>

          </div>
        </div>
      </div>
      <!-- / end client details section -->
      
     

            <sql:query dataSource="${dbsource}" var="result">
                SELECT * from sale;
            </sql:query>  
      <table class="table table-bordered">
        <thead>
            <tr>
                <th>SL.</th>
                <th>Code</th>
                <th>Category</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Unit</th>
                <th>Per<br>Unit<br>Price(TK)</th>
                <th>Total Price</th>
                
                
            </tr>
        </thead>
        <tbody>
          <% int a=1; %>
                        <c:forEach var="row" items="${result.rows}">
                            <tr>
                                <td><c:out value=""/><% out.print(a++); %></td>
                                <td><c:out value="${row.code}"/></td>
                                <td><c:out value="${row.category}"/></td>
                                <td><c:out value="${row.product_name}"/></td>
                                <td><c:out value="${row.quantity}"/></td>
                                <td><c:out value="${row.unit}"/></td>
                                <td><c:out value="${row.per_unit_price}"/></td>
                                <td><c:out value="${row.total_price}"/></td>
                            </tr>
                            </c:forEach>
                       
          
        </tbody>
      </table>
                        
      <div class="row text-right">
        <div class="col-xs-2 col-xs-offset-8">
          <p>
            <strong>
                Sub Total : <br>
            TAX(15%) : <br>
            Discount(): <br>
            Total : <br>
            <br>Date : <br>
            </strong>
          </p>
        </div>
        <div class="col-xs-2">
          <strong>
              <input type="text"> <br>
           <input type="text"> <br>
          <input type="text"> <br>
          <input type="text"> <br>
          <script>
          var currentDate = new Date()
var day = currentDate.getDate()
var month = currentDate.getMonth() + 1
var year = currentDate.getFullYear()
document.write("<b>" + day + "/" + month + "/" + year + "</b>")
          </script>
         <br>
          </strong>
        </div>
      </div>
      
    </div>
  </body>
</html>

<% } %>