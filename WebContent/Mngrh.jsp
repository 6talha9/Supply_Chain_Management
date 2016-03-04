<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body background="raw/back.jpg">
	<nav class="navbar navbar-inverse ">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				
			</button>
			<a class="navbar-brand" href="index.jsp">PCLSCMS</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp"><span
						class="glyphicon glyphicon-home"></span> Home</a>
						<li class="active"><a href="MdShip.jsp"><span
						class="glyphicon glyphicon-print"></span> Shipment Record </a></li>
						<li class="active"><a href="Mngrh.jsp"><span
						class="glyphicon glyphicon-floppy-saved"></span>Update Shipment Record</a>
			</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="index.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a>
						</li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><span
						class="glyphicon glyphicon-user"style="color: green"></span> Profile <span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="Owner.jsp"><span
								class="glyphicon glyphicon-user" style="color: blue"></span>
								View </a>
						</li>
						<li><a href="Login.jsp"><span
								class="glyphicon glyphicon-user" style="color: red"></span>
								Change Password</a>
						</li>
					
					</ul></li>

			</ul>
		</div>
	</div>
	</nav>
	

	
	
	<div class="fluid" Style="color: white" >
	
		<%@ page autoFlush='true' language='java' import='java.sql.*' import= 'model.DbOp'  %>



<%
try
  {			DbOp op = new DbOp();
	            ResultSet rs=op.mngr_h();
				
	            out.println("<h4>PO Records:</h4>");
					out.println("<table border='8%' width='100%' >");
					
out.println("<tr style=\"color: yellow\"> <th>PO ID</th><th>item ID</th><th>Item Name</th><th>Supplier</th><th>Source</th><th>Distination</th><th>Dispatch Date</th><th>Mode</th><th>Cost</th><th>Action</th> ");
					
					
					while(rs.next()){
						 
                     
					 out.println("<tr><td>"+rs.getInt(1)+"</td>");
out.println("<td>"+rs.getInt(2)+"</td>");
					 out.println("<td>"+rs.getString(3)+"</td>");
					 out.println("<td>"+rs.getString(4)+"</td>");
					 out.println("<td>"+rs.getString(5)+"</td>");
					 out.println("<td> Warehouse</td>");
					   out.println("<form method=\"post\" action=\"Ship\">");

out.print("<td>");
out.print("<input type=\"hidden\" name=\"id\" value=\""+rs.getInt(6)+"\">");
out.print("<input type=\"hidden\" name=\"frm\" value=\""+rs.getString(5)+"\">");
out.print("<input type=\"hidden\" name=\"to\" >");
		 out.println("<input type=\"date\" name=\"date1\" class=\"form-control\"  required Style=\"color: black\"></td>");
		
					 out.println("<td><input type=\"text\" name=\"mode1\" class=\"form-control\"  placeholder=\"mode\" required autofocus Style=\"color: black\"></td>");
							

					out.println("<td><input type=\"text\" name=\"cost1\" class=\"form-control\"  placeholder=\"cost\" required autofocus Style=\"color: black\"></td>");
					
						out.println("<td><button class=\"btn btn-md btn-primary form-control \" type=\"submit\">update</button></td></tr>"); 
					 out.println("</form></tr>");

					
										}		
					out.println("</table>");
					
					
					
					
		            ResultSet rs2=op.mngr_h2();
		            out.println("<h4>SO Records:</h4>");
		            
						out.println("<table border='8%' width='100%' >");
						
	out.println("<tr style=\"color: yellow\"> <th>SO ID</th><th>item ID</th><th>Item Name</th><th>Source</th><th>Distination</th><th>Dispatch Date</th><th>Mode</th><th>Cost</th><th>Action</th> ");
						
						
						while(rs2.next()){
							 
	                     
						 out.println("<tr><td>"+rs2.getInt(1)+"</td>");
	out.println("<td>"+rs2.getInt(2)+"</td>");
						 out.println("<td>"+rs2.getString(3)+"</td>");
						 out.println("<td> Warehouse</td>");
						 out.println("<td>"+rs2.getString(4)+"</td>");
						
						   out.println("<form method=\"post\" action=\"Ship\">");
	out.println("<input type=\"hidden\" name=\"id\" value=\""+rs2.getInt(5)+"\">");
	out.println("<input type=\"hidden\" name=\"to\" value=\""+rs2.getString(4)+"\">");
	out.print("<input type=\"hidden\" name=\"frm\" >");
			 out.println("<td><input type=\"date\" name=\"date1\" class=\"form-control\"  required Style=\"color: black\"></td>");
			
						 out.println("<td><input type=\"text\" name=\"mode1\" class=\"form-control\"  placeholder=\"mode\" required autofocus Style=\"color: black\"></td>");
								

						out.println("<td><input type=\"text\" name=\"cost1\" class=\"form-control\"  placeholder=\"cost\" required autofocus Style=\"color: black\"></td>");
						
							out.println("<td><button class=\"btn btn-md btn-primary form-control \" type=\"submit\">update</button></td></tr>"); 
						 out.println("</form></tr>");

						
											}		
						out.println("</table>");

				








op.close1();rs.close();
rs2.close();


   }
  catch(Exception e)
   {

out.println("<b>pending final product -----------------</b>");
   }
%>

	</div>
	</body>
</html>