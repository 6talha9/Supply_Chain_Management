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
	
<script
	src="style/js/jquery-1.11.1.min.js"></script>
<script
	src="style/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="style/css/jquery.dataTables.css">
<script type="text/javascript">
$(document).ready(function() {
    $('#example').dataTable( {
        "pagingType": "full_numbers"
    } );
} );
</script>
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
	

	
	<div class="fluid" Style="color: white">
	<div class="row">
			<div  class="col-md-8 col-md-offset-2">

				<h4 class="text-center login-title" style="color: yellow">Purchase Order Record</h4>
				<br><br>
					
					</div></div></div>

		<%@ page autoFlush='true' language='java' import='java.sql.*'
			import='model.DbOp'%>
<div style="background-color: white">
<table id='example' class='display' cellspacing='0' width='100%'>
<thead>
            <tr>
                <th>PO_Id</th><th>Item </th> <th>Supplier</th><th>UnitItem Price</th><th>Quantity</th><th>Total Amt</th> <th>Shipment Id</th><th>Faulty Item</th><th>Item used</th> <th>InStock Item</th><th>RecDate</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>PO_Id</th><th>Item </th> <th>Supplier</th><th>UnitItem Price</th><th>Quantity</th><th>Total Amt</th> <th>Shipment Id</th><th>Faulty Item</th><th>Item used</th> <th>InStock Item</th><th>RecDate</th>
            </tr>
        </tfoot>
         <tbody>

		<%
			try {
				DbOp op = new DbOp();
				ResultSet rs = op.OdPO();

			//	out.println("<table border='8%' width='100%' >");

			//	out.println("<tr style=\"color: yellow\"><th>PO_Id</th><th>Item </th> <th>Supplier</th><th>UnitItem Price</th><th>Quantity</th><th>Total Amt</th> <th>Shipment Id</th><th>Faulty Item</th><th>Item used</th> <th>InStock Item</th><th>RecDate</th>");

				while (rs.next()) {

					out.println("<tr><td>" + rs.getInt(1) + "</td>");
					out.println("<td>" + rs.getString(2) + " "
							+ rs.getString(3) + " " + rs.getString(4) + " "
							+ "</td>");
					out.println("<td>" + rs.getString(5) + "</td>");
					out.println("<td>" + rs.getInt(6) + "</td>");
					out.println("<td>" + rs.getInt(7) + "</td>");
					out.println("<td>" + rs.getInt(8) + "</td>");
					out.println("<td>" + rs.getInt(9) + "</td>");
					out.println("<td>" + rs.getInt(10) + "</td>");
					out.println("<td>" + rs.getInt(11) + "</td>");
					out.println("<td>" + rs.getInt(12) + "</td>");
					out.println("<td>" + rs.getString(13) + "</td></tr>");

				}

	

				String s = (String) session.getAttribute("sum");

				op.close1();rs.close();

			} catch (Exception e) {

				out.println("<b>pending final product -----------------</b>");
			}
		%>
  </tbody>
	        </table>
	        </div>
	        
</body>
</html>