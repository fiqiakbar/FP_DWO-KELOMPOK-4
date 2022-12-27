<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/wh_adventureworks?user=root&password=" catalogUri="/WEB-INF/queries/dwoadw2.xml">

select {[Measures].[OrderQty]} ON COLUMNS,
  {([Produk],[Customer],[Store],[CreditCard],[Time])} ON ROWS
from [Sales]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query DWO UAS Kel 4 using Mondrian OLAP</c:set>