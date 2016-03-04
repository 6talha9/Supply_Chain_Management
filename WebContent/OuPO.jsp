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
<script>
function search()
{
	//alert('Record Successfully Added!!!');
var xmlhttp;
//var str= document.f11.id1.value;
//valueOf().
//var str= document.getElementById(id1);
//alert(str);
/* if (str=="")
{
document.getElementById("txtHint").innerHTML="";
return;
} */
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
	//alert(xmlhttp.readyState);
	//alert(xmlhttp.status);

	if (xmlhttp.readyState==4 || xmlhttp.status==200)
    {
		//alert(xmlhttp.responseText);
    document.getElementById("div2").innerHTML=xmlhttp.responseText;
    //alert('Record Successfully Added!!!');
    }
  };
//xmlhttp.open("GET","Spo.jsp?q="+str,true);
xmlhttp.open("GET","Spo.jsp",true);
xmlhttp.send();
}
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
	
	<br><br>
	
	
	
	<div class="container" style="color: yellow">
		<form  id= "f11" method="post" action="Login"> 
	<br>
	<div class="container" id="div1"></div>
		<br>
					<div class="row">
				<div class="col-md-2 ">

					<label class="control-label" for="selectbasic">Enter PO ID	</label><br>	
										<input type="text" name="POid"
						class="form-control" placeholder=" PO ID" id="id1" required autofocus></div>
			<div class="col-md-2 "><br>
			<button type="button" id="b1" class="btn btn-warning btn-lg" onclick="search()">Search</button></div>
			
				
</div></form></div>


	<br><br>
	
	<div class="container" style="color: yellow">
		<form class="form-signin" method="post" action="Upo">
			
			
			<div class="row">
				<div class="col-md-4 " id="div2">

					<label class="control-label" for="selectbasic">Select Item
						Type</label> <br> 
						
						<%-- 	
				<div class="col-md-4 ">

					 <select id="selectbasic" name="<%=items[i]%>"
						class="selectpicker show-tick form-control"
						data-live-search="true"  data-style="btn-warning" >
						  <option value="default" >Select one--</option>
						<%while(rs.next()){ %><option  value=<%=rs.getString(1)%>><%=rs.getString(3)%> <%=rs.getString(4)%></option>
			<%} %>
					</select>
				</div> --%>
						<%@ page autoFlush='true' language='java' import='java.sql.*'
			import='model.DbOp'%>
					<%
			try {
				//String[] items={"MainBoard","Processor","RAM","Hard Disk","DVD ROM","SMPS","FAN","graphic Card","LAN CARD","Sound Card","Cabinate","Monitor","Speaker","Keyboard","Mouse","Head Set","Other"};
				DbOp op = new DbOp();
				ResultSet rs = op.popitm();
				%>
						
						<select id="si1" name="itm"
						 class="selectpicker show-tick form-control"
						data-live-search="true" data-style="btn-warning">
						 
						
						 <%--  <option value="default" >Select one--</option>
						
						<%while(rs.next()){ ResultSet rs2 = op.popitmpo2(rs.getString(1));%>
						 <optgroup label="<%=rs.getString(1)%>">
							
           <%while(rs2.next()) {%><option value=<%=rs2.getString(1)%>><%=rs2.getString(3)%> <%=rs2.getString(4)%></option>
                         </optgroup>
           <%}}%>
				
 --%>					</select>
				</div>



				<div class="col-md-3 ">

					<label class="control-label" for="selectbasic">Select
						Supplier</label> <br> <select id="selectbasic" name="sup"
						class="selectpicker show-tick form-control"
						data-live-search="true" data-style="btn-warning">
						  <option value="default" >Select one--</option>
					<%ResultSet rs3 = op.popsplr();%>
					 <%while(rs3.next()) {%>  <option value=<%=rs3.getString(1)%>><%=rs3.getString(2)%> </option>
					
					<%}	}catch (Exception e) {

					out.println("<b>pending final product -----------------</b>");
				}%>  
					</select>
				</div>
	<div class="col-md-2">
					<label class="control-label" for="selectbasic">Enter
						Unit Item Price</label> <br> <input type="text" name="amnt"
						class="form-control" placeholder=" Amount" required autofocus>
				</div>
				<div class="col-md-2">
					<label class="control-label" for="selectbasic">Enter
						Quantity</label> <br> <input type="text" name="qtty"
						class="form-control" placeholder=" Quantity" required autofocus>
				</div></div><br><br>
							<div class="row">				
					<div class="col-md-3 col-md-offset-4">
					<button class="btn btn-lg btn-primary btn-block" type="submit">
							Submit</button>
						</div></div>
	
	</form>
	</div>


</body>
</html>