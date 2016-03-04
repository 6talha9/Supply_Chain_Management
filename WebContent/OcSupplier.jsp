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
						class="glyphicon glyphicon-home"></span> Home<br></a></li>
			<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage PO<br>Record<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="OcPO.jsp">Add PO</a></li>
            <li><a href="OuPO.jsp">Update PO</a></li>
            <li><a href="OdPO.jsp">Display PO</a></li>
          </ul>
        </li>
<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage SO<br>record<span class="caret"></span></a>
          <ul class="dropdown-menu">
         
            <li><a href="OuSO.jsp">Update SO</a></li>
            <li><a href="OdSO.jsp">Display SO</a></li>
          </ul>
        </li>
<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Raw <br>Items Record<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Ocitem.jsp">Add Item</a></li>
            <li><a href="Ouitem.jsp">Update Item</a></li>
            <li><a href="Oditem.jsp">Display Item</a></li>
          </ul>
        </li>
<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">manage Supplier<br>record<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="OcSupplier.jsp">Add Record</a></li>
         
            <li><a href="OdSup.jsp">Display Record</a></li>
          </ul>
        </li>
<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Shipping<br>Manager Record<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="OcShipmngr.jsp">Add Record</a></li>
   
            <li><a href="OdShipmngr.jsp">Display Record</a></li>
          </ul>
        </li>
<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Shop and<br>Seller Record<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="OcSlr.jsp">Add Record</a></li>
            <li><a href="OuShopslr.jsp">Update Record</a></li>
            <li><a href="OdShopslr.jsp">Display Record</a></li>
          </ul>
        </li>
        <li >
          <a href="OdShip.jsp">Shipment<br>Record</a>
          
        </li>
          <li >
          <a href="OdCust.jsp">Customer<br>Record</a>
          
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
		
		<div class="container" style="color: yellow">
		<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" >Enter Records For new Supplier</h4>
				
					</div></div>
					<form class="form-signin" method="post" action="Supp">
					<div class="row">			
					<div class="col-md-4 col-md-offset-4">
						
						<input type="text" name="nm" class="form-control"
							placeholder="Name" required autofocus> </div>
			</div><br>
					
					<div class="row">			
					<div class="col-md-4 col-md-offset-2">
					
						<input type="text" name="Mob" class="form-control"
							placeholder="Mobile No." required autofocus> 
				</div>
			<div class="col-md-4">			<input type="text" class="form-control" name="email"
							placeholder="Email"><br>
							</div></div>
						<div class="row">			
					<div class="col-md-8 col-md-offset-2"><textarea class="form-control" rows="2" name="Add" id="Add" placeholder="Address"></textarea><br>
					</div></div>	
					<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" >Enter Items Supplied by the  Supplier</h4>
				
					</div></div>	
						
						<%@ page autoFlush='true' language='java' import='java.sql.*'
			import='model.DbOp'%>

				<div class="row">
		<%
			try {
				//String[] items={"MainBoard","Processor","RAM","Hard Disk","DVD ROM","SMPS","FAN","graphic Card","LAN CARD","Sound Card","Cabinate","Monitor","Speaker","Keyboard","Mouse","Head Set","Other"};
				DbOp op = new DbOp();
				ResultSet rs = op.popitm();
				while(rs.next()){
					
				
				
								%>
						
						
						<div class="col-md-2 col-md-offset-1">

					
<input type="checkbox" name="itm" value="<%=rs.getString(1)%>"><%=rs.getString(1)%><BR>
 
				</div>
							
				
				
				
			<%-- 	
				<div class="col-md-4 ">

					<label class="control-label" for="selectbasic">Select <%=items[i]%></label> <br> <select id="selectbasic" name="<%=items[i]%>"
						class="selectpicker show-tick form-control"
						data-live-search="true"  data-style="btn-warning" >
						  <option value="default" >Select one--</option>
						<%while(rs.next()){ %><option  value=<%=rs.getString(1)%>><%=rs.getString(3)%> <%=rs.getString(4)%></option>
			<%} %>
					</select>
				</div> --%>


	
				<%}
				}catch (Exception e) {

					out.println("<b>pending final product -----------------</b>");
				}%>
				</div>
				<br> 
				
									<div class="row">				
					<div class="col-md-4 col-md-offset-4">
					<button class="btn btn-lg btn-primary btn-block" type="submit">
							Submit</button>
						</div></div>
					
					
					

		
				

					
					
	
	

					
					
					</form>
				</div>
	</body>
</html>