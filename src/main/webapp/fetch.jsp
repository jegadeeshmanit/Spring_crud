<%@page isELIgnored="false" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch</title>
</head>
<body>
<div align="center">
<table border="1">
<tr>
<th>NAME</th>
<th>EMAIL</th>
<th>MOBILE</th>
<th>SALARY</th>
<th>Delete</th>
<th>Edit</th>
</tr>
<x:forEach var="emp" items="${list}">
<tr>
<th>${emp.name}</th>
<th>${emp.email}</th>
<th>${emp.mobile}</th>
<th>${emp.salary}</th>
<th><a href="delete?id=${emp.id }"><button>Delete</button></a></th>
<th><a href="edit?id=${emp.id }"><button>Edit</button></a></th>

</tr>
</x:forEach>
</table>
<a href="home"><button>back</button></a>
</div>
</body>
</html>