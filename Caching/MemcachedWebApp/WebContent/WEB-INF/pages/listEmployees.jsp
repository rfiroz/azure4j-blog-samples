<%--
Copyright 2012 Persistent Systems Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
response.setHeader( "Pragma", "no-cache");
response.setHeader( "Cache-Control", "no-store, no-cache"); 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>Employee Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Department</th>
				<th colspan="2">Operation</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employees}" var="employee">
				<tr>
					<td><c:out value="${employee.empId}"></c:out></td>
					<td><c:out value="${employee.firstName}"></c:out></td>
					<td><c:out value="${employee.lastName}"></c:out></td>
					<td><c:out value="${employee.department}"></c:out></td>
					<td><a href="Employees?action=updateEmployee&empId=<c:out value="${employee.empId}"/>">Update</a></td>
					<td><a href="Employees?action=deleteEmployee&empId=<c:out value="${employee.empId}"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p><a href="Employees?action=addEmployee">Add Employee</a></p>
</body>
</html>