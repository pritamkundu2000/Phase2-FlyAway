<%@page import="java.util.List"%>
<html>
	<head>
		<title>Flight Lists</title>
	</head>
	<body>
		<center><h1><a href="homePage.jsp" style="text-decoration:none;color:red">Fly Away</a></h1></center>
		
		<br>
		<center><h3>All the details are listed below:-</h3></center>
	
		
		<%
			List<String[]> flights=(List<String[]>)session.getAttribute("Flights");
			
			
			if(flights!=null){
		%>
		
		
		
		<div align="center">
			<table border="1">
				<thead>
					<tr>
						<th>Plane Name</th>
						<th>Source</th>
						<th>Destination</th>
						<th>date</th>
						<th>Time</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<%
						for(String[] flight:flights){
							
					%>
					<tr>
						<td><%=flight[0]%></td>
						<td><%=flight[1] %></td>
						<td><%=flight[2] %></td>
						<td><%=flight[3] %></td>
						<td><%=flight[4] %></td>
						<td><%=flight[5] %></td>
					</tr>
					<% 
							}
					%>
					
				</tbody>
			</table>
			<%
				}
			else{
				
			%>
			<h4 style=color:red>No Flights available</h4>
			<%} %>
		</div>
		
				
	</body>
</html>