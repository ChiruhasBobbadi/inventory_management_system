<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title> Operation</title>
    </head>
    <body>
        
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3036/inventory"
                           user="root"  password="chiruhas2000"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO sale(code, category,product_name,quantity,unit,per_unit_price,total_price,date) VALUES (?,?,?,?,?,?,?,?);
            <sql:param value="${param.code}" />
            <sql:param value="${param.category}" />
            <sql:param value="${param.product_name}" />
            <sql:param value="${param.quantity}" />
            <sql:param value="${param.unit}" />
            <sql:param value="${param.per_unit_price}" />
            <sql:param value="${param.total_price}" />
            <sql:param value="${param.date}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="../sales.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>