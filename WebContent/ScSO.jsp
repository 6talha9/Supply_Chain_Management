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
<link rel="stylesheet" type="text/css"
	href="style/css/bootstrap-select.css">
<script type="text/javascript" src="style/js/bootstrap-select.js"></script>
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
	
		<div class="container" style="color: yellow">
	
	
					<form class="form-signin" method="post" action="SO">
		<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" style="color: yellow">Create SO</h4>
		
					
					</div></div>				
					
					<%@ page autoFlush='true' language='java' import='java.sql.*'
			import='model.DbOp'%>
			<%
			try {
				//String[] items={"MainBoard","Processor","RAM","Hard Disk","DVD ROM","SMPS","FAN","graphic Card","LAN CARD","Sound Card","Cabinate","Monitor","Speaker","Keyboard","Mouse","Head Set","Other"};
				DbOp op = new DbOp();
				ResultSet rs = op.popitm();
				while(rs.next()){
					
				%>
					
					<div class="col-md-4 ">

						<label class="control-label" for="selectbasic">Select <%=rs.getString(1)%></label> <br> <select id="selectbasic" name="<%=rs.getString(1)%>"
							class="selectpicker show-tick form-control"
							data-live-search="true"  data-style="btn-warning" >
							  <option value="default" >Select one--</option>
							  <%
							  ResultSet rs2 = op.popitmpo2(rs.getString(1));
							  
							  
							  %>
							<%while(rs.next()){ %><option  value=<%=rs2.getString(1)%>><%=rs2.getString(3)%> <%=rs2.getString(4)%></option>
				<%} 
				}
				}catch (Exception e) {

					out.println("<b>pending final product -----------------</b>");
				}%>
						</select>
					</div> 
				
			
		<div class="col-md-4 ">

					<label class="control-label" for="selectbasic">Service Charge</label> <br>
					<input type="text" name="srvc" class="form-control"
							placeholder="Service Charge"  required autofocus>
				</div>
					
			
			<br>
						<div class="row">
				<div class="col-md-4 ">

					
						<input type="text" name="qtty" class="form-control"
							placeholder="Enter Quantity" required autofocus>
				</div>


		<div class="col-md-4 ">

				
							<button class="btn btn-lg btn-primary btn-block" type="">
							Calculate Amount</button>
				</div>
						<div class="col-md-4 ">

					<input type="text" name="tamnt" class="form-control"
							placeholder="Total Amount" disabled required autofocus>
				</div>
			</div>
			
			
			
						<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" style="color: yellow">Enter Customer Detail</h4>
		
					
					</div></div>
			
			
						<div class="row">
				<div class="col-md-4 ">
 
						<input type="text" name="fn" class="form-control"
							placeholder="Enter First name" required autofocus>
				</div>


		<div class="col-md-4 ">

					 
						<input type="text" name="ln" class="form-control"
							placeholder="Enter Last name" required autofocus>
				</div>
						<div class="col-md-4 ">

					 <input type="text" name="Mob" class="form-control"
							placeholder="Enter Mob No." required autofocus>
				</div>
			</div>
		<br>
							<div class="row">
			<div  class="col-md-2 col-md-offset-5">

				
							<button class="btn btn-lg btn-primary btn-block" type="submit">
							Make PO</button>
		
					
					</div></div>	
					
					</form>
	</div>
	
	</body>
</html>