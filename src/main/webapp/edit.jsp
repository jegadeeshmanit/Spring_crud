<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Record</title>
</head>
<body>
<div align="center">
<h1>Edit Employee Records</h1>
<form action="update" method="post">
<input type="number" name="id" value="${emp.id}" hidden="hidden">
Name:<input type="text" name="name" value="${emp.name}"><br><br>
Email:<input type="email" name="email" value="${emp.email}"><br><br>
Mobile:<input type="number" name="mobile" value="${emp.mobile}"><br><br>
Salary:<input type="number" name="salary" value="${emp.salary}"><br><br>
<button>Update</button>

</form><br><br>
 <a href="fetch"> <button>Back</button></a>
</div>
    
</body>
</html>